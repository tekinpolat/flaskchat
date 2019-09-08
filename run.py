from flask import (Flask, session, render_template, request, flash, redirect, url_for, 
                    Markup
                   )
from db_config import connection
from flask_socketio import SocketIO, emit
from datetime import datetime
from func import encrypt_string

app = Flask(__name__)
app.config['SECRET_KEY'] = 'the random string'
app.config['DEBUG'] = True
app.config['SESSION_COOKIE_NAME'] = 'CHAT_V1'
#app.config['SESSION_COOKIE_SECURE'] = True #302 FOUND dönderiyor.
app.config['TESTING'] = True
socketio = SocketIO(app)


@app.route('/')
def index():
    if not 'id' in session:
        return redirect(url_for('login'))
    
    query = "SELECT id, fullname, email FROM users WHERE id != %s"
    cursor = connection.cursor()
    cursor.execute(query, (session['id'], ))
    users = cursor.fetchall()
    
    return render_template('index.html', users=users)

@app.route('/login')
def login():
    if 'id' in session:
        return redirect(url_for('index'))
    return render_template('login.html')

@app.route('/login', methods=['POST'])
def login_post():
    email = request.form.get('email', '').strip()
    password = request.form.get('password', '').strip()

    print(encrypt_string(password))
    

    if email == '' or password == '':
        flash('Kullanıcı veya şifreniz boş olamaz...', 'danger')
        return redirect(url_for('login'))

    
    query = "SELECT id,fullname FROM users WHERE email = %s AND password = %s LIMIT 1"
    cursor = connection.cursor()
    cursor.execute(query, (email, encrypt_string(password)))
    records = cursor.fetchone()
    cursor.close()

    
    
    if records == None:
        flash('Kullanıcı veya şifreniz hatalı...', 'danger')
        return redirect(url_for('login'))

    
    session['id'] = records['id']
    session['email'] = email
    session['fullname'] = records['fullname']

    return redirect(url_for('index'))
    
@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('login'))


@app.route('/getMessage', methods=['POST'])
def getMessage():
    to = request.form.get('to', -1)

    if to == -1:
        return ""

    query = "SELECT id, message, pub_date, from_id FROM messages WHERE (from_id = %s AND to_id = %s) OR (from_id = %s AND to_id = %s) ORDER BY id DESC"
    cursor = connection.cursor()
    cursor.execute(query, (session['id'], to, to, session['id']))
    messages = cursor.fetchall()
    data = ""
    for _message in messages:
        to_class  = 'text-right' if _message['from_id'] != session['id'] else 'text-left'; 
        who  = '<span class="badge badge-success" role="alert"> <i class="fas fa-long-arrow-alt-left"></i> ME:</span>' if _message['from_id'] == session['id'] else '<span class="badge badge-warning" role="alert"><i class="fas fa-long-arrow-alt-right"></i> YOU:</span>'; 
        data += '<li class="list-group-item {}" id="{}">{} {} - <span class="badge badge-info"><i class="far fa-clock"> {}</i></span></li>'.format(to_class, _message['id'], who, Markup.escape(_message['message']), _message['pub_date'])
    return data


@app.route('/to-message-do-read', methods=['POST'])
def tomessagedoread():
    to_id = request.form.get('to', -1)
    print(to_id)

    query = "UPDATE messages SET `status`= '1' where from_id = %s and to_id = %s AND `status` = '0'"
    cursor = connection.cursor()
    cursor.execute(query, (session['id'], to_id))
    connection.commit()
    cursor.close()
    
    return "ok"






#socket 
@socketio.on('connect')
def test_connect():
    emit('after connect',  {'data':'Lets dance'})

@socketio.on('send message')
def value_changed(message):
    now = datetime.now()
    message['pub_date'] = now.strftime("%Y-%m-%d %H:%M:%S")

    query = "INSERT INTO messages(from_id, to_id, message) VALUES(%s, %s, %s)"
    cursor = connection.cursor()
    cursor.execute(query, (message['from_id'] , message['who'], message['data']))
    connection.commit()
    cursor.close()
    
    
    result = {}
    
    
    if message['yollayan'] == message['who']:
        who ='<span class="badge badge-success" role="alert"> <i class="fas fa-long-arrow-alt-left"></i> ME:</span>'
    else:
        who ='<span class="badge badge-warning" role="alert"> <i class="fas fa-long-arrow-alt-right"></i> YOU:</span>'

    result['template'] = '<li class="list-group-item text-right" id=""> {}: {} - <span class="badge badge-secondary"><i class="far fa-clock"> {}</i></span></li>'.format(who, Markup.escape(message['data']), message['pub_date'])
    result['fromto'] = str(message['from_id']) + str(message['who'])
    result['tofrom'] = str(message['who']) + str(message['from_id'])
    emit('update value', result, broadcast=True)




if __name__ == '__main__':
    #app.run(debug=True)
    socketio.run(app) 
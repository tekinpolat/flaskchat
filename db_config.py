
import pymysql

try:
    connection = pymysql.connect(host='localhost',
                                database='flask_chat',
                                user='tknplt',
                                password='2121',
                                charset='utf8mb4',
                                cursorclass=pymysql.cursors.DictCursor
                                )
except Exception as e:
    print("Error while connecting to MySQL", e)
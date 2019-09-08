import hashlib
def encrypt_string(hash_string):
    return hashlib.sha256(hash_string.encode()).hexdigest()
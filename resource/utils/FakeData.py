import random
import string

def generate_username(length=8):
    return ''.join(random.choices(string.ascii_lowercase, k=length))

def generate_password(length=10):
    chars = string.ascii_letters + string.digits + "!@#$%^&*"
    return ''.join(random.choices(chars, k=length))

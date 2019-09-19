#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import hmac
import scrypt
import json

from os import urandom
from time import time
from base64 import b32decode

from secret import SECRET


class AuthenticationException(Exception):
    pass


class Operation:
    READ = 0x4
    WRITE = 0x2
    CREATE = 0x1


class OTP:

    def __init__(self):
        self.secret = SECRET
        self.window = 5

    def verify(self, code):

        if code is None:
            return False

        ctime = int(time())
        code = b32decode(code.strip())

        for t in range(ctime - self.window, ctime + self.window):
            c = hmac.new(self.secret, str(t)).digest()
            if hmac.compare_digest(code, c):
                return True

        return False


class User:

    def __init__(self):
        self.capabilities = []

    def set_capabilities(self, capabilities):
        self.capabilities = capabilities

    def set_password(self, password):
        self.password = password

    def set_email(self, email):
        self.email = email


class Database:

    def __init__(self):
        self.users = dict()
        self.salt = urandom(32)
        self.otp = OTP()

    def hash_credentials(self, username, password):
        hashed_username = scrypt.hash(str(username), self.salt)
        hashed_password = scrypt.hash(str(password), self.salt)

        return hashed_username, hashed_password

    def check_admin(self, username):
        return "admin" in username

    def create(self, username, password):
        hashed_username, hashed_password = self.hash_credentials(
            username, password
        )

        self.users[hashed_username] = User()
        self.users[hashed_username].set_password(hashed_password)

        if self.check_admin(username):
            self.users[hashed_username].set_capabilities([
                Operation.READ
            ])

    def read(self, username, password, code=""):
        hashed_username, hashed_password = self.hash_credentials(
            username, password
        )

        if self.check_admin(username) and not self.otp.verify(code):
            raise AuthenticationException(
                "Remote admin access requires valid two-factor authentication."
            )

        if hashed_username not in self.users or \
                self.users[hashed_username].password != hashed_password:
            raise AuthenticationException("Incorrect username of password.")

        if Operation.READ not in self.users[hashed_username].capabilities:
            raise AuthenticationException("Read access denied.")

        sys.stdout.write("{}\n".format(SECRET))
        sys.stdout.flush()


class Server:

    def __init__(self):
        self.db = Database()

    def get(self, data, entry):
        return data.get(entry).encode("cp1252")

    def create(self, data):
        self.db.create(
            self.get(data, "username"),
            self.get(data, "password")
        )

    def read(self, data):
        self.db.read(
            self.get(data, "username"),
            self.get(data, "password"),
            code=data.get("otp")
        )

    def run(self):

        sys.stdout.write("Welcome to Appelgrens Mekaniska admin interface.\n")
        sys.stdout.write("#")
        sys.stdout.flush()

        while True:
            try:
                data = json.loads(sys.stdin.readline())
                command = data.get("command")

                if command == "create":
                    self.create(data)
                elif command == "read":
                    self.read(data)
                else:
                    print "Incorrect command"
                    sys.exit(0)

            except AuthenticationException as ae:
                sys.stdout.write("authentication error: %s\n" % ae)
                sys.stdout.flush()

            except Exception:
                sys.stdout.write("error: malformed input")
                sys.stdout.flush()
                sys.exit(1)


s = Server()
s.run()

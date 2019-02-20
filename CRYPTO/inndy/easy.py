#! /usr/bin/python
# coding=utf-8
from pwn import *
import base64

c='526b78425233745561476c7a49476c7a4947566863336b7349484a705a3268305033303d'
print base64.b64decode(unhex(c))
#!/usr/bin/python3
from flask import flask
app=flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

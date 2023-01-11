#!/usr/bin/python3
"""
a minimal flask application
"""
from flask import flask
app=flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

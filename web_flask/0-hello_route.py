#!/usr/bin/python3
"""
a minimal flask application
"""
from flask import flask
app = flask(__name__)

@app.route('/', strict_slashes=False)
def hello_bnb():
    """displays hello bnb"""
    return "Hello HBNB!"
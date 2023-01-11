#!/usr/bin/python3
"""
a minimal flask application
The application listens on 0.0.0.0, port 5000.
Routes:
    /: Displays 'Hello HBNB!'
"""
from flask import flask

app = flask(__name__)


@app.route('/', strict_slashes=False)
def hello_bnb():
    """displays hello bnb"""
    return "Hello HBNB!"
if __name__ == '__main__':
    app.run(host='0.0.0.0')

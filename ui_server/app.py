"""Rackspace demo UI application."""

"""Initializes rackspace demo UI application."""
import logging
import os
import logging.config
from flask import Flask, request, render_template
from flask.ext import restful  # pylint: disable=no-name-in-module

APP = Flask(__name__)

@APP.route('/index')
def main():
    return render_template('index.html')

@APP.route('/static/<path:path>')
def static_server():
    return APP.send_static_file(os.path.join('static', path))


if __name__ == '__main__':
    APP.run(host='0.0.0.0', port= 8081, debug=True)

import os
from rocket import Rocket
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, World!"

if __name__ == "__main__":
    Rocket((os.environ.get('ADDRESS', '0.0.0.0'), int(os.environ.get('PORT', 9000))), 'wsgi', {'wsgi_app': app}).start()
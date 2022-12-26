import requests
from flask import Flask, render_template
import web
app = Flask(__name__)


@app.route('/')
def index():
    return "Welcome to ReaQta"


@app.route('/api')
def api ():
    return "welcome to ReaQta api"

#import web


if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    app.run(debug=True,host='0.0.0.0',port=port)
    
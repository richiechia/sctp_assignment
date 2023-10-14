from flask import Flask
import os  # library for operating system calls

PORT = os.getenv("PORT", 8080)

app = Flask(__name__)


@app.route("/abc")
def hello_world():
    return "<p>Hello, World!</p>"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=PORT)

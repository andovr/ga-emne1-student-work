from flask import Flask
from flask import render_template
from flask import request
from mysql.connector import Error

app = Flask(__name__)
app.url_map.strict_slashes = False

@app.route("/")
def index():
    return render_template("index.html", heading="Jinja")

@app.route("/about")
def about():
    return render_template("about.html", author="Andreas Øvrebotten")

@app.route("/greet")
def greet():
    name = request.args.get("guest", "Guest" ).strip()
    if name == "":
        name = "Guest"
    return render_template("greet.html", name=name)
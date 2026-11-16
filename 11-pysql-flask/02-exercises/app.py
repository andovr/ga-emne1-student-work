from flask import Flask
from flask import render_template
from flask import request
from mysql.connector import Error

from database import get_cities

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

@app.route("/cities")
def cities():
    code = request.args.get("country", "NOR").strip().upper()
    if (len(code)) != 3 or not code.isascii() or not code.isalpha():
        return "Invalid code", 400
    try:
        rows = get_cities(code)
        count = len(rows)
    except Error:
        app.logger.exception("Database query failed")
        return "Database unavailable", 503

    return render_template("cities.html", code=code, rows=rows, count=count)
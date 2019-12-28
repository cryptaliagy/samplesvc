from flask import Flask
from flask_pymongo import PyMongo
from flask_json_schema import JsonSchema
from flask_login import LoginManager
from app.config import Config

app = Flask(__name__)
app.config.from_object(Config)

mongo = PyMongo(app)
schema = JsonSchema(app)
login_manager = LoginManager(app)

from app import routes  # noqa: E402 F401

import os


class Config:
    SECRET_KEY = os.getenv('SECRET')
    MONGO_URI = os.getenv('DB')

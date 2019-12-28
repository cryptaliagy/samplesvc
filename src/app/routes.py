import os
from flask import jsonify
from app import app

service_name = os.getenv('SERVICE_NAME')[:-3]


@app.route(f'/{service_name}/heartbeat')
def heartbeat():
    response = {
        'data': f'{service_name}svc operational',
        'ok': True
    }

    return jsonify(response)

from flask import (
    Blueprint, jsonify, request
)

from .db import get_db

blueprint = Blueprint('api', __name__, url_prefix='/api')


@blueprint.route('/users', methods=('GET',))
def users():
    if request.method == 'GET':
        db = get_db()

        db.execute(
            'SELECT * FROM users'
        )

        rows = db.fetchall()

        columns = ['id', 'first_name', 'last_name', 'email', 'gender', 'ip_address']
        result = []
        for row in rows:
            result.append(dict(zip(columns, row)))

    return jsonify({'users': result})


@blueprint.route('/items', methods=('GET',))
def items():
    if request.method == 'GET':
        db = get_db()

        rows = db.execute(
            'SELECT * FROM items'
        ).fetchall()

        columns = ['id', 'name', 'description', 'images', 'seller_id']
        result = []
        for row in rows:
            result.append(dict(zip(columns, row)))

    return jsonify({'items': result})

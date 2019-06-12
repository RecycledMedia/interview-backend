from flask import (
    Blueprint, flash, render_template, request
)

from .db import get_db

blueprint = Blueprint('users', __name__, url_prefix='/users')


@blueprint.route('/', methods=('GET',))
def users():
    if request.method == 'GET':
        db = get_db()

        result = db.execute(
            'SELECT * FROM users'
        ).fetchall()

        if result is None:
            flash('error')
        else:
            user = result

    return render_template('/users.html', users=user)

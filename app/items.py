from flask import (
    Blueprint, flash, render_template, request, abort
)

from .db import get_db

blueprint = Blueprint('items', __name__, url_prefix='/items')


@blueprint.route('/', methods=('GET',))
def items():
    if request.method == 'GET':
        db = get_db()

        result = db.execute(
            'SELECT * FROM items'
        ).fetchall()

        if result is None:
            flash('error')
        return render_template('/items.html', items=result)

    abort(404)

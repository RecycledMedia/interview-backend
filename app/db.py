import pymysql
import click

from flask import current_app, g
from flask.cli import with_appcontext


def get_db():
    if 'db' not in g:
        g.db = pymysql.connect(
            host='localhost',
            user='root',
            password='rootroot',
            db='MyDB',
            cursorclass=pymysql.cursors.DictCursor
        ).cursor()
    return g.db


def close_db(e=None):
    db = g.pop('db', None)

    if db is not None:
        db.close()


@click.command('init-db')
@with_appcontext
def init_db_command():
    db = get_db()


def init_app(app):
    app.teardown_appcontext(close_db)
    app.cli.add_command(init_db_command)

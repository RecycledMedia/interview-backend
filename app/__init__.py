import os

from flask import Flask


def create_app():
    app = Flask(__name__, instance_relative_config=True)
    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE=os.path.join(app.instance_path, 'flaskr.sqlite'),
    )

    from . import db
    db.init_app(app)

    @app.route('/hello')
    def hello():
        return 'Hello, World!'

    from . import users
    app.register_blueprint(users.blueprint)

    from . import api
    app.register_blueprint(api.blueprint)

    return app

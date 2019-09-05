# Onsite Interview Exercise

This is a skeleton app for an eCommerce website for buying and selling of items.

## For Flask installation ->

## Install
You'll need Python3 and SQLite3. It is highly recommended to use [virtualenv](https://docs.python.org/3/library/venv.html)

Install Flask
> pip install flask

## Load the (SQLite3) database
> flask init-db

## Run the application in Debug mode
> FLASK_DEBUG=1 flask run

## For Django installation ->
You'll need Python3, Django and SQLite3 installed.

Download the django folder.
Run the following commands to initialize db -
> python3 manage.py makemigrations msg_system

> python3 manage.py migrate msg_system

> python manage.py runserver

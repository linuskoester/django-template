#!/usr/bin/env bash

python manage.py makemigrations # add django applications
python manage.py migrate
python manage.py shell < docker/startup_automation.py
python manage.py runserver 0.0.0.0:80

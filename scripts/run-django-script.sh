#! /bin/bash

docker-compose run web poetry run /chicode/manage.py "$@"



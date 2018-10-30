#! /bin/bash

docker-compose run web poetry run /chicode/manage.py loaddata default
docker-compose run web poetry run /chicode/manage.py loaddata nico




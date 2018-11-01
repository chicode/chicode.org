FROM python:3.7

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /chicode

RUN pip install poetry
COPY ./pyproject.toml pyproject.toml
COPY ./poetry.lock poetry.lock
RUN poetry install --no-dev

COPY ./chicode chicode
COPY ./manage.py .
COPY ./static static
COPY ./node_modules node_modules

CMD poetry run ./manage.py runserver 0.0.0.0:8000
EXPOSE 8000



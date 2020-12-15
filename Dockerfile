FROM python:3.8.5
WORKDIR /code
COPY . /code
RUN pip install --upgrade pip
RUN pip install -r /code/requirements.txt
CMD gunicorn api_yamdb.wsgi:application --bind 127.0.0.1:8000

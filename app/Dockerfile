FROM python:3.10.7-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

RUN addgroup --system app && adduser --system --group app
RUN chown -R app:app /app

USER app       
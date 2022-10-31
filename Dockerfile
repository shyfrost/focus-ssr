FROM python:3.10.8-alpine3.15

WORKDIR /app

COPY ./app/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

RUN addgroup -S app && adduser -S app app

RUN chown -R app:app /app

USER app
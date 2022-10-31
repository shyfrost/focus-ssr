FROM python:3.10.8-alpine3.15

WORKDIR /app

COPY ./app/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ./app .

RUN addgroup -S app && adduser -S app app

RUN chown -R app:app /app

USER app

EXPOSE 7000

CMD ["gunicorn", "--bind", "0.0.0.0:7000", "manage:app"]
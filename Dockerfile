FROM python:3.8-alpine

WORKDIR /usr/src/app

RUN apk add --update postgresql-dev \
  && rm -rf /var/cache/apk/*

RUN pip install --no-cache-dir fastapi uvicorn

EXPOSE 8000

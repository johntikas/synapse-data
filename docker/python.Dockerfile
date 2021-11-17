FROM python:3.9.9-slim-buster

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND noninteractive

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /synapse
WORKDIR /synapse
COPY . /synapse/

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    build-essential \
    bash

RUN pip install --upgrade \
    pip \
    synapseclient \
    flask

EXPOSE 5000

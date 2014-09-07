FROM ubuntu:14.04
MAINTAINER Arthur Caranta <arthur@caranta.com>

RUN apt-get update
RUN apt-get -y install python-pip
ADD . /docker-registry-ui
WORKDIR /docker-registry-ui
RUN pip install flask

EXPOSE 8080

CMD python run.py


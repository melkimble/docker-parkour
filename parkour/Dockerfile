FROM python:3.5

MAINTAINER Devon P. Ryan, dpryan79@gmail.com

RUN apt-get update && apt-get -y install nano

RUN git clone https://github.com/maxplanck-ie/parkour.git

RUN mkdir -p /usr/src/app && \
    cp -a parkour/. /usr/src/app && \
    rm -rf parkour/

WORKDIR /usr/src/app

ENV TERM=xterm

RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.5

MAINTAINER Devon P. Ryan, dpryan79@gmail.com

RUN git clone https://github.com/maxplanck-ie/parkour.git

RUN mkdir -p /usr/src/app && \
    cp -a parkour/. /usr/src/app && \
    rm -rf parkour/

WORKDIR /usr/src/app

RUN pip install --no-cache-dir -r requirements.txt

FROM ubuntu:16.04

MAINTAINER Devon P. Ryan, dpryan79@gmail.com

RUN apt-get update && apt-get install -y language-pack-en git nano python3-pip

ENV TERM xterm
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_LANG en_US.UTF-8

# Install wkhtmltox (for generating PDF files)
COPY ./keyboard /etc/default/keyboard
RUN apt-get install -y openssl build-essential xorg libssl-dev wget
RUN wget https://downloads.wkhtmltopdf.org/0.12/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz && \
    tar -xJf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz && \
    cd wkhtmltox && \
    chown root:root bin/wkhtmltopdf && \
    cp -r * /usr/

WORKDIR /usr/src/app

RUN git clone https://github.com/maxplanck-ie/parkour.git .
RUN pip3 install -r requirements/prod.txt

# Django
ENV DJANGO_SETTINGS_MODULE "wui.settings.prod"
ENV SECRET_KEY "5(15ds+i2+%ik6z&!yer+ga9m=e%jcqiz_5wszg)r-z!2--b2d"
ENV DATABASE_URL "postgres://postgres:postgres@postgres:5432/postgres"

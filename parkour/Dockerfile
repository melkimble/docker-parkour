FROM python:3.5

MAINTAINER Devon P. Ryan, dpryan79@gmail.com

ENV TERM xterm
ENV SECRET_KEY 5(15ds+i2+%ik6z&!yer+ga9m=e%jcqiz_5wszg)r-z!2--b2d
ENV DATABASE_URL "postgres://postgres:postgres@postgres:5432/postgres"
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LC_LANG en_US.UTF-8

# Install wkhtmltox (for generating PDF files)
RUN apt-get update && apt-get install -y openssl build-essential xorg libssl-dev git nano
RUN wget http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz && \
    tar -xJf wkhtmltox-0.12.3_linux-generic-amd64.tar.xz && \
    cd wkhtmltox && \
    chown root:root bin/wkhtmltopdf && \
    cp -r * /usr/

WORKDIR /usr/src/app

RUN git clone https://github.com/maxplanck-ie/parkour.git .
RUN pip install --no-cache-dir -r requirements.txt

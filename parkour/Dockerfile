FROM python:3.5

MAINTAINER Devon P. Ryan, dpryan79@gmail.com

RUN apt-get update && apt-get install -y wkhtmltopdf

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

RUN git clone https://github.com/maxplanck-ie/parkour.git .

ENV TERM=xterm
ENV SECRET_KEY=5(15ds+i2+%ik6z&!yer+ga9m=e%jcqiz_5wszg)r-z!2--b2d
ENV DATABASE_URL="postgres://postgres:postgres@postgres:5432/postgres"

RUN pip install --no-cache-dir -r requirements.txt

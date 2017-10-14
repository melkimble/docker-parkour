FROM python:latest

MAINTAINER Devon P. Ryan, dpryan79@gmail.com

RUN apt-get update && apt-get install -y nano

ENV TERM xterm

WORKDIR /usr/src/app

# Download app and install requirements
RUN git clone https://github.com/maxplanck-ie/parkour.git .
RUN pip install -r requirements/prod.txt

# Django
ENV DJANGO_SETTINGS_MODULE "wui.settings.prod"
ENV SECRET_KEY "5(15ds+i2+%ik6z&!yer+ga9m=e%jcqiz_5wszg)r-z!2--b2d"
RUN python manage.py collectstatic --noinput

# Run server
CMD /usr/local/bin/gunicorn wui.wsgi:application -w 2 -b :8000

FROM ubuntu:14.04

MAINTAINER Devon P. Ryan, dpryan79@gmail.com

RUN apt-get python3 pip && \
    git clone git@github.com:maxplanck-ie/parkour.git && \
    cd /parkour && \
    pip install -r requirements.txt && \
    python3 manage.py runserver

EXPOSE :80

CMD ["sleep", "1000000"]

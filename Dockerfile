FROM ubuntu:14.04

MAINTAINER Devon P. Ryan, dpryan79@gmail.com

RUN git clone https://github.com/maxplanck-ie/parkour-docker.git && \
    cd /parkour && \
    pip3 install -r requirements.txt && \
    python3 manage.py runserver

EXPOSE :80

CMD ["sleep", "1000000"]

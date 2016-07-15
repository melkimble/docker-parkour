# parkour-docker
A Docker container for Parkour

## How to run Parkour
1) Create Docker host
```
docker-machine create -s virtualbox dev;
```

2) Point Docker with *dev* machine
```
eval $(docker-machine env dev)
```

3) Build the images and start the services
```
docker-compose build
docker-compose up -d
```

4) Migrate database
```
docker-compose run parkour python manage.py migrate
```

5) Create superuser (admin)
```
docker-compose run parkour python manage.py createsuperuser
```

6) Lauch Parkour at ```http://localhost/```

# parkour-docker
A Docker container for Parkour

## How to run Parkour
1) Create Docker host
```
docker-machine create -d virtualbox dev;
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

4) Collect all necessary fles
```
docker-compose run parkour python manage.py collectstatic --noinput
```

5) Migrate database
```
docker-compose run parkour python manage.py migrate
```

6) Create superuser (admin)
```
docker-compose run parkour python manage.py createsuperuser
```

7) Lauch Parkour at ```http://localhost/```

8) Manage Parkour at ```http://localhost/admin/```

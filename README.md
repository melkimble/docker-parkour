Docker container for Parkour

## How to run Parkour

1) Build the images and start the services
```
docker-compose build
docker-compose up -d
```

2) Enter the container
```
docker exec -it dockerparkour_parkour_1 /bin/bash
```

3) Collect all necessary fles
```
python manage.py collectstatic --noinput
```

4) Migrate database
```
python manage.py migrate
```

5) Create superuser (admin)
```
python manage.py createsuperuser
```

6) Exit the container and restart it
```
exit
docker restart dockerparkour_parkour_1
```

---

7) Lauch Parkour ```http://localhost/```

8) Manage Parkour ```http://localhost/admin/```

# Parkour Docker Image

Docker container for easy deployment of the [Parkour](https://github.com/maxplanck-ie/parkour).

## Installation

### Step 1

Clone this repository:
```
git clone https://github.com/maxplanck-ie/docker-parkour.git
cd docker-parkour
```

Copy in the server's SSL certificate into `nginx/parkour.pem`:

```
cp /etc/ssl/certs/parkour/parkour.pem nginx/parkour.pem
```

Build the images and start the services:

```
docker-compose \
	-f docker-compose.yml \
	-f docker-compose.prod.yml \
	up -d --build
```

### Step 2

Migrate the database:
```
docker-compose run parkour-web python manage.py migrate
```

Create a superuser (admin):
```
docker-compose run parkour-web python manage.py createsuperuser
```

---

## Usage

Open Parkour: ```http://localhost:8001/```

Manage Parkour (admin site): ```http://localhost:8001/admin/```

---

Enter the container:

```
docker-compose exec parkour-web bash
```

See the app logs:

```
docker exec -t dockerparkour_parkour-web cat app.log
```

or:

```
docker-compose logs --tail 100 parkour-web
```

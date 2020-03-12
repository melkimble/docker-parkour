# Parkour Docker Image

Docker container for easy deployment of the [Parkour](https://github.com/melkimble/parkour).

## Installation

### Step 0

Install [docker](https://docs.docker.com/install/) and [docker compose](https://docs.docker.com/compose/install/#install-compose).

### Step 1

Clone this repository:
```
git clone https://github.com/melkimble/docker-parkour.git
cd docker-parkour
```

Copy in the server's SSL certificate into `nginx-prod/parkour.pem`:

```
cp /etc/ssl/certs/parkour/parkour.pem nginx-prod/parkour.pem
```

Note that `parkour.pem` must contain both the public and the private key, so you may need to `cat public.crt private.key > nginx-prod/parkour.pem`.

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

Open Parkour: ```https://localhost```

Manage Parkour (admin site): ```https://localhost/admin/```

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

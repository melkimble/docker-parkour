# Parkour Docker Image

Docker container for easy deployment of the [Parkour](https://github.com/maxplanck-ie/parkour).

## Installed tools

* [Parkour](https://github.com/maxplanck-ie/parkour)

## Requirements

* [Docker](https://docs.docker.com/engine/installation/) for Linux/macOS/Windows

## Installation

### Step 0

Install [Docker](https://docs.docker.com/engine/installation/)

### Step 1

Clone this repository:
```
git clone https://github.com/maxplanck-ie/docker-parkour.git
cd docker-parkour
```

Build the images and start the services:

```
docker-compose build
docker-compose up -d
```

### Step 2

Enter the container
```
docker exec -it dockerparkour_parkour_1 /bin/bash
```

Collect all static fles
```
python manage.py collectstatic --noinput
```

Migrate the database
```
python manage.py migrate
```

Create superuser (admin)
```
python manage.py createsuperuser
```

Exit the container and restart it
```
exit
docker restart dockerparkour_parkour_1
```

---

## Usage

Open Parkour: ```http://localhost/```

Manage Parkour (admin site): ```http://localhost/admin/```

Direct management:
```
docker exec -it dockerparkour_parkour_1 /bin/bash
python manage.py --help
```

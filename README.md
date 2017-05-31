# Parkour Docker Image

Docker container for easy deployment of the [Parkour](https://github.com/maxplanck-ie/parkour).

## Installation

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

Enter the container:
```
docker exec -it dockerparkour_web_1 /bin/bash
```

Collect all static files:
```
python3 manage.py collectstatic --noinput
```

Migrate the database:
```
python3 manage.py migrate
```

Create a superuser (admin):
```
python3 manage.py createsuperuser
```

Exit the container and restart it:
```
exit
docker-compose restart web
```

---

## Usage

Open Parkour: ```http://localhost/```

Manage Parkour (admin site): ```http://localhost/admin/```

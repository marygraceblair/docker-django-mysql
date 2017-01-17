# Docker for Django + Mysql

This is a simple Docker project which creates containers running Django (but pretty
sure it can be changed to run any Python project, that's a *TODO*) and MySQL (latest).
Also contains phpMyAdmin to easily manage the database.

There are some tweaks needed before being able to run it. First of all change
`MYSQL_ROOT_PASSWORD`, `MYSQL_DATABASE`, `MYSQL_USER` and `MYSQL_PASSWORD`
in the file `docker-compose.yml` according to your project.

If you have an existing Python project, you have to change `Dockerfile`
accordingly (lines #5 and #6). It is also needed to change line #16 from
`docker-compose.yml`, changing the string
`djangoproject` to the name you've given to your project, then run:

```
docker-compose up
```

If you are creating a new project, after cloning this repository create the project
directory, make the same changes as before and then run (making the obvious change):

```
docker-compose run web django-admin.py startproject djangoproject .
```

It is important that the `requirements` file is present and with Django listed.

This was totally based on Docker official [Quickstart: Compose and Django](https://docs.docker.com/compose/django/).

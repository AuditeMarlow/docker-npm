npm in Docker
=============

A personalized build to run npm in a containerized environment.

Installation
------------

```sh
$ docker pull auditemarlow/npm:latest
```

Usage example
-------------
```sh
$ docker run \
    --rm \
    --init \
    --interactive \
    --tty \
    --workdir /app \
    --volume "$PWD":/app \
    auditemarlow/npm:latest
```

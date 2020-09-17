# Docker SQL Client

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/informaticsmatters/sql-client)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/informaticsmatters/sql-client)

[![CodeFactor](https://www.codefactor.io/repository/github/informaticsmatters/docker-sql-client/badge)](https://www.codefactor.io/repository/github/informaticsmatters/docker-sql-client)

A simple Alpine-based container image for SQL-database client operations.
The image **CMD** executes `/home/client/script.sh`. Mount your own script
in order to execute your own PostgreSQL or MySQL commands.

Built with: -

- psql client v12.1
- mysql client v15.1

As you will need to execute commands for a remote PostgreSQL database
you will need to map content into the [pgpass] file `/home/client/.pgpass`.
This file should contain lines of the following format:

    hostname:port:database:username:password

>   On Unix systems, the permissions on a password file must disallow any
    access to world or group; achieve this by a command such as
    `chmod 0600 ~/.pgpass`. If the permissions are less strict than this
    the file will be ignored.

To build and push a specific **tag**, use docker-compose: -

    $ IMAGE_TAG=2020.1 docker-compose build
    $ IMAGE_TAG=2020.1 docker-compose push

---

[pgpass]: https://www.postgresql.org/docs/12/libpq-pgpass.html


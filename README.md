# Docker SQL Client
A simple Alpine-based container image for SQL-database client operations.
The image executes `/home/client/script.sh`, mount your own script
in order to execute your own PostgreSQL or MySQL commands.

If you need to execute commands as for a remote PostgreSQL database
you will need to map content into the [pgpass] file `/home/client/.pgpass`.
This file should contain lines of the following format:

    hostname:port:database:username:password

>   On Unix systems, the permissions on a password file must disallow any
    access to world or group; achieve this by a command such as
    `chmod 0600 ~/.pgpass`. If the permissions are less strict than this,xi
    the file will be ignored.

To build and push, use docker-compose: -

    $ IMAGE_TAG=2020.1 docker-compose build
    $ IMAGE_TAG=2020.1 docker-compose push

Built with: -

- psql client v12.1
- mysql client v15.1

---

[pgpass]: https://www.postgresql.org/docs/12/libpq-pgpass.html


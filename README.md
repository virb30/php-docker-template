# PHP Docker Template

PHP project template with Docker

## Description

Configures Docker containers for:
- PHP
- Nginx
- Composer

## Available Configuration

You can set a DB_DRIVER to be installed at PHP image build, accepted values are:
- none: to use with Sqlite
- mysql: to use with MariaDB
- pgsql: to use with Postgres

It's also possible to set the INSTALL_REDIS argument to true to install Redis driver to PHP image at build.

```yml
...
php:
  build:
    # ...
    args:
      USER_ID: ${UID:-0}
      GROUP_ID: ${GID:-0}
      INSTALL_REDIS: "false"
      DB_DRIVER: "none"
...
```

## How to Use

With this template it is possible to:

- Start the environment
```console
docker-compose -f "docker-compose.yml" up -d --build
```
  
- Install PHP dependencies with composer
```console
docker-compose run composer composer <composer command>
#Alternativelly you can use the Makefile helper
make composer "<composer command>"
```

- Run PhpUnit tests
```console
docker-compose exec php php ./vendor/bin/phpunit
#To specify a test file
docker-compose exec php php ./vendor/bin/phpunit path/to/FileTest.php
```

- Execute a PHP application served by a Nginx Web server that will be available at http://localhost:8080
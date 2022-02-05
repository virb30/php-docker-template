# PHP Docker Template

PHP project template with Docker

## Description

Configures Docker containers for:
- PHP
- Nginx
- Composer

## How to Use

With this tamplate it is possible to:
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

- Execute a fully functional Nginx web server that will at `http://localhost:8080'
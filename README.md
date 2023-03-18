# PHP Docker Template

PHP quickstart project template using Docker

## Description

Configures Docker containers and tools as your needs for:
- PHP (versions latest, 7.4, 8.0 or 8.1), with:
    - Xdebug
    - grumphp (pre-commit hook)
    - php-cs-fixer
    - phpunit
    - database extension (pdo_mysql or pdo_pgsql)
    - redis
- Nginx
- Composer
## Pre-requisits

- [Python](https://www.python.org/downloads/) 3.8+
- [copier](https://copier.readthedocs.io/en/stable/#installation)
- [git](https://git-scm.com/downloads) 2.27+
- [docker](https://docs.docker.com/engine/install/)
- [docker-compose](https://docs.docker.com/compose/install/)

## Usage

**Do not clone this repository**

Follow the instructions below to start a new project:

```console
copier https://github.com:virb30/php-docker-template.git path/to/your/project
```

## Directory & files structure

- `.docker`: contains Dockerfiles and files that are required for docker to run
- `.vscode`: contains configuration files of VS Code (debug)
- `public`: public path of project - You should put all public files in this folder eg. index.php, favicon.ico
- `src`: source code of application - All the code should be put in this directory
- `tests`: tests files of application - PHPUnit will listen to this folder by default
- `grumphp.yml`: configuration file for grumphp
- `phphunit.xml`: configuration file for phpunit
- `composer.json` & `composer.lock`: dependency list


## Windows users

Works only with WSL
## Docker Quickstart Guide

- [Install Docker](#install-docker)
- [Add laradock](#add-submodule)
- [Build container](#build-container)
- [Launch it :-)](#launching-containers)
- [Common Operations](#common-tasks)

<a name="install-docker"></a>
###Install Docker

Installing Docker on ubuntu
```bash
apt-get update
apt-get install -y wget
wget -qO- https://get.docker.com/ | sh
```
Checking Docker version
```bash
docker --version
```

<a name="add-submodule"></a>
###Add laradock

From your laravel base directory

```bash
git submodule add https://github.com/brokergenius/laradock.git
```

<a name="build-container"></a>
###Build containers

```bash
docker-compose build php-fpm nginx workspace selenium-chrome
```
Grab a cup of cofee while this is happening this might take some time 

<a name="launching-containers"></a>
###Launch it 
```bash
docker-compose up -d php-fpm nginx workspace selenium-chrome
```

<a name="common-tasks"></a>
###Common Operations

Checking if containers are running
```bash
docker ps
```

Accessing the workspace 
```bash
docker-compose exec --user=laradock workspace bash
```
Stopping the containers
```bash
docker-compose down
```
Accessing the workspace 
```bash
docker-compose exec --user=laradock workspace bash
```
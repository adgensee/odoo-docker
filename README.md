# odoo16.0 docker development environment

## Prerequirements

First, you need to install docker, we recommand to install 'Docker Desktop' application.
Also, you need to install git, we recommand to install 'GitHub Desktop' application.

Clone repository in your odoo development folder (exemple user/odoo):

    mkdir odoo && cd odoo
    git clone git@github.com:adgensee/odoo-docker.git --depth 1 --branch 16.0 odoo16

## Installation and Update

    ./bin/dependencies-download.sh

## Start :

    docker-compose -f docker-compose-odoo16_dev.yml up -d

## Stop :

    docker ps
    docker stop odoo16-dev-web-1
    docker stop odoo16-dev-db-1

## Acces from browser :

    http://localhost:8016


## Default informations : 

    Master Password : ######
    Database : odoo16_dev

    Admin email : admin
    Admin password : admin

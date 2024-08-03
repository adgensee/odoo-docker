# odoo15.0 docker development environment

## Prerequirements

First, you need to install docker, we recommand to install 'Docker Desktop' application.
Also, you need to install git, we recommand to install 'GitHub Desktop' application.

Clone repository in your odoo development folder (exemple user/odoo):

    mkdir odoo && cd odoo
    git clone git@github.com:adgensee/odoo-docker.git --depth 1 --branch 15.0 odoo15

## Installation and Update

    ./bin/dependencies-download.sh

## Start :

    docker-compose -f docker-compose-odoo15_dev.yml up -d

## Stop :

    docker ps
    docker stop odoo15-dev-web-1
    docker stop odoo15-dev-db-1

## Acces from browser :

    http://localhost:8015


## Default informations : 

    Master Password : ######
    Database : odoo15_dev

    Admin email : admin
    Admin password : admin

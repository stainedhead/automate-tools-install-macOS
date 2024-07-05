#!/bin/bash

source utility-methods.shinc

### //////////////////////////////////////////////////////
### actual code of the script #####

# validate-and-refresh-brew


############################################################
print-header "checking your services"

start-section "installing or updating services"

if ! is-service-installed elasticsearch-full ; then

    brew tap elastic/tap
    install elasticsearch-full 
    show-service elasticsearch-full
fi

if ! is-service-installed kafka ; then
    install kafka 
    show-service kafka
fi

if ! is-service-installed mongodb-community ; then
    brew tap mongodb/brew
    install mongodb-community 
    show-service mongodb-community
fi

if ! is-service-installed mysql ; then
    install mysql 
    show-service mysql
fi

if ! is-service-installed podman ; then
    install podman 
    show-service podman
fi

if ! is-service-installed postgresql@16 ; then
    install postgresql@16 
    show-service postgresql@16
fi

if ! is-service-installed redis ; then
    install redis 
    show-service redis
fi



brew services list

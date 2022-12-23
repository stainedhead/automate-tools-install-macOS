#!/bin/bash

source utility-methods.shinc


### //////////////////////////////////////////////////////
### actual code of the script #####

validate-and-refresh-brew

############################################################
start-section "DB tools"

if ! is-package-installed mariadb ; then
    install-apt mariadb-server
    show-version mariadb
fi

if ! is-package-installed sqlite3 ; then
    install-apt sqlite3
    show-version sqlite3
fi

if ! is-package-installed sqlitebrowser ; then
    install-apt "--cask db-browser-for-sqlite"
    show-version sqlitebrowser 
fi


print-header "end of install script..."


#if ! is-package-installed notgoingtowork ; then
#    echo "need to install notgoingtowork"
#fi



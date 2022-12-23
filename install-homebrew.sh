#!/bin/bash

source utility-methods.shinc

if ! is-package-installed brew ; then
    
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)".

fi

echo "you have brew installed"
show-version brew
show-loc brew
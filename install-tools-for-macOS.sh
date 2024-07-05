#!/bin/bash

source utility-methods.shinc

### //////////////////////////////////////////////////////
### actual code of the script #####

validate-and-refresh-brew


############################################################
print-header "checking your development tools"

start-section "Dev languages"

if ! is-package-installed dart ; then
    install dart-sdk 
    show-version dart
fi

if ! is-package-installed dotnet ; then
    install "--cask dotnet-sdk" 
    show-version dotnet-sdk
fi

if ! is-package-installed gcc ; then
    install gcc
    show-version gcc
fi

if ! is-package-installed go version ; then
    install golang 
    show-version go version
fi

if ! is-package-installed groovy ; then
    install groovysdk 
    show-version groovy
fi

#if ! is-package-installed g++ ; then
#    install-apt g++
#    show-version g++
#fi

# install JDK with Adoptium
#
# note openjdk will be installed as a dependency to other installs
# but it won't be useable from command line
#
#if ! is-package-installed javac ; then
#    install openjdk@17
#    show-version javac
#fi

if ! is-package-installed kotlin -version; then
    install kotlin 
    show-version kotlin -version
fi

if ! is-package-installed node ; then
    install node
    show-version node
fi

if ! is-package-installed nim ; then
    install nim
    show-version nim
fi

if ! is-package-installed python3 ; then
    install python@3.11
    show-version python3
fi

if ! is-package-installed ruby ; then
    install ruby 
    show-version ruby
fi

if ! is-package-installed rustc ; then
    install rust
    show-version rustc
fi

if ! is-package-installed tsc ; then
    install-npm typescript --save-dev
    show-version tsc
fi

if ! is-package-installed zig version; then
    install zig 
    show-version zig version
fi


############################################################
start-section "CLI tools"

if ! is-package-installed aws ; then
    install awscli 
    show-version aws
fi

if ! is-package-installed eb ; then
    install awsebcli 
    show-version eb
fi

if ! is-package-installed az ; then
    install azure-cli
    show-version az
fi

if ! is-package-installed bazel ; then

    install bazel
    show-version bazel
fi

if ! is-package-installed cdk ; then
    install aws-cdk
    show-version cdk
fi

if ! is-package-installed cdktf ; then
    install cdktf
    show-version cdktf
fi

if ! is-package-installed cmake ; then
    install cmake
    show-version cmake
fi

if ! is-package-installed create-react-app ; then
    install-npm create-react-app 
    show-version create-react-app
fi

if ! does-app-exist flutter ; then
    install "--cask flutter" 
    show-version flutter
fi

if ! is-package-installed gh ; then
    install gh
    show-version gh
fi

if ! is-package-installed git ; then
    install git 
    show-version git
fi

if ! is-package-installed gradle -v; then
    install gradle 
    show-version gradle -v
fi

if ! is-package-installed httpie ; then
    install httpie
    show-version httpie
fi

if ! is-package-installed jq ; then
    install jq
    show-version jq
fi

if ! is-package-installed kubectl "version --short"; then
    install kubectl 
    show-version kubectl "version --short"
fi

if ! is-package-installed mvn ; then
    install maven
    show-version mvn
fi

if ! is-package-installed newman ; then
    install newman 
    show-version newman
fi

if ! is-package-installed ng version; then
    install angular-cli 
    show-version ng version
fi

if ! is-package-installed nmap ; then
    install nmap
    show-version nmap
fi

if ! is-package-installed npm ; then
    echo "TODO: npm should have installed with node"
fi

if ! is-package-installed pip3 ; then
    curl https://bootstrap.pypa.io/get-pip.py -o ~/Downloads/get-pip.py
    python3 ~/Downloads/get-pip.py
    del ~/Downloads/get-pip.py
    show-version pip3
fi

if ! is-package-installed pulumi version ; then
    install pulumi
    show-version pulumi version
fi

# need to comment, app doesnt support --version 
#
#if ! is-package-installed openai ; then
#    # https://beta.openai.com/docs/guides/fine-tuning
#    pip install --upgrade openai
#    show-version openai
#
#    # todo: WARNING: The script openai is installed in '~/.local/bin' which is not on PATH.
# fi


#if ! is-package-installed rails ; then
#    install-gem rails 
#    show-version rails
#fi

if ! is-package-installed snyk ; then
    install-npm snyk
    show-version snyk
fi

if ! is-package-installed terraform ; then
    install terraform 
    show-version terraform
fi

if ! is-package-installed yarn ; then
    install-npm yarn
    show-version yarn
fi

############################################################
start-section "UI tools"

if ! does-app-exist atom ; then
    install "--cask atom" 
    show-loc atom
fi

if ! is-package-installed code ; then
    install "--cask visual-studio-code"
    show-version code
fi

#if ! does-app-exist gitkraken ; then
#    install "--cask gitkraken" 
#    show-loc gitkracken
#fi

if ! does-app-exist google-chrome ; then
    install "--cask google-chrome"
    show-loc google-chrome
fi

if ! does-app-exist inkscape ; then
    install "--cask inkscape"
    show-loc inkscape 
fi


if ! does-app-exist postman ; then
    install "--cask postman"
    show-loc postman 
fi

if ! does-app-exist slack ; then
    install "--cask slack"
    show-loc slack
fi

#// not a cli, so we need to test another way
if ! does-app-exist zoom ; then
    install "--cask zoom"
    show-loc zoom
fi


#if ! is-package-installed notgoingtowork ; then
#    echo "need to install notgoingtowork"
#fi

############################################################
start-section "install complete"



#!/bin/zsh

VERSION="1.7.1"
DIRECTORY="docker-compose-`uname -s`-`uname -m`"

rm -Rf ~/Applications/$DIRECTORY-$VERSION
mkdir -p ~/Applications/$DIRECTORY-$VERSION

curl -L https://github.com/docker/compose/releases/download/$VERSION/$DIRECTORY  > ~/Applications/$DIRECTORY-$VERSION/docker-compose

chmod +x ~/Applications/$DIRECTORY-$VERSION/docker-compose

ln -fs ~/Applications/$DIRECTORY-$VERSION/ ~/Applications/docker-compose


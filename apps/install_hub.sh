#!/bin/zsh

VERSION="2.2.3"
DIRECTORY="hub-linux-amd64-$VERSION"

rm -Rf ~/Applications/$DIRECTORY
rm ~/Applications/hub

curl -L https://github.com/github/hub/releases/download/v$VERSION/$DIRECTORY.tgz > ~/Applications/$DIRECTORY.tgz
tar -xzvf ~/Applications/$DIRECTORY.tgz -C ~/Applications/

ln -sf ~/Applications/$DIRECTORY ~/Applications/hub

rm ~/Applications/$DIRECTORY.tgz


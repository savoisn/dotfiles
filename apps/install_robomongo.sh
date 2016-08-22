#!/bin/zsh

VERSION="2.2.3"
FILE_NAME="hub-linux-amd64-$VERSION"
PATH="~/Applications"

rm -Rf ~/Applications/$DIRECTORY
rm ~/Applications/hub

curl -L https://github.com/github/hub/releases/download/v$VERSION/$DIRECTORY.tgz > ~/Applications/$DIRECTORY.tgz
tar -xzvf ~/Applications/$DIRECTORY.tgz -C ~/Applications/

ln -sf ~/Applications/$DIRECTORY ~/Applications/hub

rm ~/Applications/$DIRECTORY.tgz

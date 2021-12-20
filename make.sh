#!/bin/bash

/Applications/Docker.app/Contents/MacOS/Docker &

rm -rf ~/Library/Containers/com.docker.docker &&
ln -s ~/goinfre/docker ~/Library/Containers/com.docker.docker &&


./build

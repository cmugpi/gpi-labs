#!/usr/bin/env bash

rm -rf ./platforms

mkdir -p platforms/platform0{1..3}/platform0{1..3}

touch platforms/{BOX,COIN,PIPE,SHELL}
touch platforms/platform0{1..3}/{BOX,COIN,PIPE,SHELL}
touch platforms/platform01/platform0{1..3}/{BOX,COIN,PIPE,SHELL}
touch platforms/platform02/platform0{1..3}/{BOX,COIN,PIPE,SHELL}
touch platforms/platform03/platform0{1..3}/{BOX,COIN,PIPE,SHELL}

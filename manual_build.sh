#!/usr/bin/env bash

# (
# cd journal
# git pull
# )

(
cd mfbu
rm -rf public/*
hugo -D
echo "www.maxfettes.com" > public/CNAME
)

(
cd mfbu/public
git add .
git commit -am "$1"
git push
)

git add .
git commit -am "$1"

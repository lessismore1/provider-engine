#! /bin/bash

git checkout releases
git reset --hard master
babel ./src -d .
rm -rf src
git add .
git commit -m 'Release build'
git push -f
git checkout master

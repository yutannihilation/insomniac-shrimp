#!/bin/sh -ex

# git config
git config user.name "Travis CI"
git config user.email "yutannihilation@example.com"

cd _book
git init
git add .
git commit -m "deploy to Github Pages"

git push --quiet --force "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1

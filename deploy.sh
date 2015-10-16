#!/bin/sh -ex

# git config
git config user.name "Travis CI"
git config user.email "yutannihilation@example.com"

cd _book
git add .
git commit -m "deploy to Github Pages"

git push "https://${GH_TOKEN}@${GH_REF}" gh-pages > /dev/null 2>&1

#!/bin/sh -e

cd _book

# git config
git config user.name "Travis CI"
git config user.email "yutannihilation@example.com"

git add .
git commit -m "deploy to Github Pages"

git push --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1

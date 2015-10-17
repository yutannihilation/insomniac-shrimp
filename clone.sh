#!/bin/sh -e

if [ -d _book/ ]; then
  mv _book/ "_book_backup$(date +%s)/"
fi

git clone --quiet "https://${GH_TOKEN}@${GH_REF}" -b gh-pages _book/ > /dev/null 2>&1

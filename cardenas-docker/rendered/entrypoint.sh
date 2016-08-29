#!/bin/bash
set -e

if [ "$1" = 'build' ]; then
    npm install
    pulp dep install --allow-root
    cp dist/index.html /var/www/cardenas/index.html
    exec pulp browserify -O --to /var/www/cardenas/cardenas.js "$@"
fi

exec "$@"

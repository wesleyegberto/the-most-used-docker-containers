#!/usr/bin/env bash
set -e errexit

database=$1 || 'developmentdb'

docker run -d --rm --name db-mysql -p 3306:3306 \
    -e "MYSQL_ROOT_PASSWORD=unhackableroot" \
    -e "MYSQL_USER=devuser" \
    -e "MYSQL_PASSWORD=unhackable" \
    -e "MYSQL_DATABASE=$database" \
    mysql

docker logs -f db-mysql
#!/usr/bin/env bash
set -e errexit

docker run -it --rm --name mongodb -p 27017:27017 \
    -e MONGO_INITDB_ROOT_USERNAME=root \
    -e MONGO_INITDB_ROOT_PASSWORD=supersecret \
    -e MONGO_INITDB_DATABASE=sample \
    mongo:4.0

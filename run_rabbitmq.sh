#!/usr/bin/env bash
set -e errexit
docker run --rm -it --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:management
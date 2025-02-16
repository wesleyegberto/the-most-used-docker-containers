#!/usr/bin/env bash
set -e errexit

docker-compose -f localstack/docker-compose.yml up

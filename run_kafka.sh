#!/usr/bin/env bash
set -e errexit

# Kafdrop UI: http://localhost:19000/
docker-compose -f kafka/kafka-kafdrop/docker-compose.yml up

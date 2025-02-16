#!/usr/bin/env bash
set -e errexit

docker run --name cassandra_cluster cassandra:latest

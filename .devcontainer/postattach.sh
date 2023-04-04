#!/usr/bin/env bash
set -e
poetry env use 'python3.10'
poetry install --no-root
source .env
docker compose -f ./examples/docker/redis/docker-compose.yml up -d

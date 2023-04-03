#!/usr/bin/env bash
set -e
poetry env use 'python3.10'
poetry install --no-root
cat > .env << EOF
EXPORT DATASTORE=redis
EXPORT BEARER_TOKEN=footoken
EXPORT OPENAI_API_KEY = ''
EOF
source .env
docker compose -f ./examples/docker/redis/docker-compose.yml up -d

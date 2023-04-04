#!/usr/bin/env bash
set -e
poetry env use 'python3.10'
poetry install --no-root
cat > .env << EOF
export DATASTORE=redis
export BEARER_TOKEN=footoken
export OPENAI_API_KEY=''
EOF
wait
source .env
docker compose -f ./examples/docker/redis/docker-compose.yml up -d

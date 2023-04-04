#!/usr/bin/env bash
set -e
cat > .env << EOF
export DATASTORE=redis
export BEARER_TOKEN=footoken
export OPENAI_API_KEY=''
EOF
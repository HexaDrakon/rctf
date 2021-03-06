#!/bin/sh

set -e

echo "RCTF_DATABASE_PASSWORD=$(head -c 32 /dev/urandom | base64 -w0)
RCTF_TOKEN_KEY=$(head -c 32 /dev/urandom | base64 -w0)
RCTF_START_TIME=$(date +%s)000
RCTF_END_TIME=$(date -d +1week +%s)000" >> .env

cp -nR .rdeploy.example .rdeploy
cp -nR config/yml.example config/yml

mkdir -p data/rctf-postgres data/rctf-redis

chown -R 999 data
chmod 600 .env

docker-compose build

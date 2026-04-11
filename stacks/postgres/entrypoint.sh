#!/bin/sh
# entrypoint.sh


export POSTGRES_PASSWORD=$(cat /POSTGRES_PASSWORD | base64 -d)

# Delegate to the official Postgres entrypoint
exec docker-entrypoint.sh "$@"

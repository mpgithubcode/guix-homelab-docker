#!/bin/sh
# entrypoint.sh

export RPC_SECRET=$(cat /run/secrets/aria2/RPC_SECRET | base64 -d)
exec /init

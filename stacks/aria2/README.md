# Aria2 Docker Stack

This repository contains a Docker Compose setup for running **Aria2** with secure secrets management and a custom **entrypoint**.

---

## Features

- Runs Aria2 in a dedicated container.
- Uses a custom `entrypoint.sh` to load the RPC secret securely.
- Restricts capabilities for better container security.
- Resource limits for CPU and memory.
- Mounts configuration and downloads volumes.

---

## Entrypoint

The `entrypoint.sh` script is responsible for securely setting the RPC secret:

```sh
#!/bin/sh
# entrypoint.sh

export RPC_SECRET=$(cat /run/secrets/aria2/RPC_SECRET | base64 -d)
exec /init

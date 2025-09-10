#!/bin/bash
set -e

# Stop the running container (if any)
echo "Stopping old container..."
CONTAINER_ID=$(docker ps -q --filter "publish=5000")
if [ ! -z "$CONTAINER_ID" ]; then
    docker stop $CONTAINER_ID
    docker rm $CONTAINER_ID
fi


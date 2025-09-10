#!/bin/bash
set -e

echo "Stopping old container..."

# Find containers running your image
CONTAINER_ID=$(docker ps --filter "ancestor=stark56/simple-python-app:latest" --format "{{.ID}}")

if [ -n "$CONTAINER_ID" ]; then
    echo "Found container $CONTAINER_ID. Stopping..."
    docker rm -f $CONTAINER_ID
    echo "Old container stopped and removed."
else
    echo "No running container found for stark56/simple-python-app."
fi



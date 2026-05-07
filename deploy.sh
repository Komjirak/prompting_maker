#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="prompting-maker:latest"
CONTAINER_NAME="prompting-maker"

docker build -t "$IMAGE_NAME" .

docker rm -f "$CONTAINER_NAME" >/dev/null 2>&1 || true

docker run -d --name "$CONTAINER_NAME" -p 8000:8000 "$IMAGE_NAME"

echo "Deployed: http://localhost:8000"
echo "Health:   curl http://localhost:8000/health"

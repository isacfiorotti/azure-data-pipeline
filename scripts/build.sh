#!/bin/bash
set -e

IMAGE_NAME="etl-app"
TAG="latest"
DOCKERFILE_PATH="docker/Dockerfile"
BUILD_CONTEXT="."
KIND_CLUSTER_NAME="my-cluster"

echo "Building Docker image ${IMAGE_NAME}:${TAG}..."
docker build -t ${IMAGE_NAME}:${TAG} -f ${DOCKERFILE_PATH} ${BUILD_CONTEXT}

echo "Loading image into kind cluster '${KIND_CLUSTER_NAME}'..."
kind load docker-image ${IMAGE_NAME}:${TAG} --name ${KIND_CLUSTER_NAME}

echo "Restarting etl-app pods to pick up new image..."
kubectl rollout restart deployment etl-app

echo "Applying new manifests to kind."
kubectl apply -f k8s/   

echo "Build, load, and rollout restart completed successfully."

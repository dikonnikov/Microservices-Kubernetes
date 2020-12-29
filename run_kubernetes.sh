#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="meow13th/microkub-pro"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=$dockerpath microkub-run


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 5
kubectl port-forward deployment/microkub-run 8000:80


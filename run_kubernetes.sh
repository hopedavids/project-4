#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=hdavids/api:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy api --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/api-59b77966d5-hhvcv --address 0.0.0.0 8000:80


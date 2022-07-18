#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=chukwumaijem/ml-project:v1.0.1

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl create deploy ml-project --image=$dockerpath
kubectl run ml-project --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml-project 8000:80

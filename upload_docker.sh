#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
 dockerpath=rajendran1166/prediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username rajendran1166 --password password
docker tag my-image $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath

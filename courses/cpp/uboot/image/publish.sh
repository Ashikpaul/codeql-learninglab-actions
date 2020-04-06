#! /bin/bash

set -e
set -x

docker login docker.pkg.github.com -u github-actions -p ${GITHUB_TOKEN}

IMAGE_VERSION=v1.0.0
IMAGE_TAG=docker.pkg.github.com/github/codeql-learninglab-actions/courses-cpp-uboot:${IMAGE_VERSION}
IMAGE_LATEST_TAG=docker.pkg.github.com/github/codeql-learninglab-actions/courses-cpp-uboot:latest

docker build -t $IMAGE_TAG -t $IMAGE_LATEST_TAG .

docker push $IMAGE_TAG
docker push $IMAGE_LATEST_TAG

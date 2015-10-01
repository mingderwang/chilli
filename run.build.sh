#!/bin/bash
set -o xtrace
docker build --no-cache=true -f example/Dockerfile.asia.gcr.io -t asia.gcr.io/winter-wonder-647/base-onion:v4 .
#docker build -t ming/chilli .
#docker run -d -p 8080:8080 ming/chilli

#!/bin/bash
docker build -f example/Dockerfile.asia.gcr.io -t gcr.io/mitac-cust-gcp-1/base-onion .
docker build -t ming/chilli .
docker run -d -p 8080:8080 ming/chilli

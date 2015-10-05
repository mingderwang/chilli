#!/bin/bash
set -o xtrace
docker build --no-cache=true -t asia.gcr.io/winter-wonder-647/base-onion:latest example
#docker build -t asia.gcr.io/winter-wonder-647/base-onion:latest example

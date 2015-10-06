#!/bin/bash
set -o xtrace
docker build -t ming/chilli .
docker run -d -p 8080:8080 ming/chilli
cd example && ./test.sh
cd ..

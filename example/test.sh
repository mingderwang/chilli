#!/bin/bash
for i in `seq 1 1`;
do
curl -X POST -d @kube.json --header "content-type: application/json" http://api.log4security.com:32569/kube 
done

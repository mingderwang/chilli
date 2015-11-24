#!/bin/bash
for i in `seq 1 1000`;
do
curl -X POST -d @google.json --header "content-type: application/json" http://api.gogetdb.com:31423/google 
done

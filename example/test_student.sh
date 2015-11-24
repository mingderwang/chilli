#!/bin/bash
for i in `seq 1 1`;
do
curl -X POST -d @student.json --header "content-type: application/json" http://api.gogetdb.com:32663/student 
done

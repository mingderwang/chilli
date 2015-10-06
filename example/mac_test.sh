#!/bin/bash
curl -X POST -d @test.json --header "content-type: application/json" http://`boot2docker ip`:8080/city


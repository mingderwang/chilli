# chilli
Dockerize go app

# pre-install
docker
## don't use "go generate", you only need onion.go file.
## you need to pre-build image: asia.gcr.io/.../base-onion 
docker build -f example/Dockerfile.asia.gcr.io -t asia.gcr.io/mitac-cust-gcp-1/base-onion .

# build
docker build -t ming/chilli .
docker run -d -p 8080:8080 --name demo ming/chilli

# test
source code under example/

test.sh
```
curl -X POST -d @test.json --header "content-type: application/json" http://localhost:8080/city
```

test.json
```
{
   "name": "Ming", 
   "age": 32,
   "address": "Taipei, Taiwan}"
}

```

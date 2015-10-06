# for onion
example/Dockerfile is the base images for all onion images. For changing base image on google registery.
You need to stop monit and onion server on Ming1 (main server) and remove base image.

Without remove base image, asia.gcr.io/winter-wonder-647/base-onion:latest
you can't build and push to google correctly.
Because all new kube/{id}/build are regenerate (go generate) code on Ming1. Without repload base image, all new code are not gerated.

After base image is build (by ./build.sh), and you can test locally with chilli (by ./testlocal.sh)
If the test is pass, you can push base image (latest) to google registery (by ./run.push.sh)

If you want to use onion to generate code without clean and go generate again in each /build. (such as kube project, all for all cusomized projects. You need to modify rolling_update.sh and to remark #make clean and #go generate lines.


# chilli
Dockerize go app

# pre-install
docker
## don't use "go generate", you only need onion.go file.
## you need to pre-build image: asia.gcr.io/.../base-onion 
docker build -f example/Dockerfile.asia.gcr.io -t asia.gcr.io/mitac-cust-gcp-1/base-onion .

# build
docker build -t ming/chilli .
docker run -d -p 8080:8080 ming/chilli

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

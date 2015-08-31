# chilli
Dockerize go app

# build
docker build -t mingderwang/chilli .
docker run -d -p 8080:8080 -v $(pwd):/gopath/src/onion mingderwang/chilli 

# test

```
curl -X POST -d @test.json --header "content-type: application/json" http://localhost:8080/onion
```

test.json
```
{
    "domainName": "com.example.project", 
    "typeName": "slack",
    "jsonSchema": "{\"message\": \"Hello World\", \"size\": 32, \"number\": 1.234}"
}
```

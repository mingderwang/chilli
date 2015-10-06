FROM golang:1.5.1

RUN mkdir -p /go/src/github.com/mingderwang/chilli
RUN go get github.com/mingderwang/pepper
RUN go get github.com/mingderwang/ginger \
  && cd /go/src/github.com/mingderwang/chilli \
  && wget https://s3-ap-northeast-1.amazonaws.com/log4-base-onion/supermarket/example_onion.go \
  && go generate \
  && go get ./... 

ONBUILD RUN mkdir -p /go/src/github.com/mingderwang/onion
ONBUILD RUN mkdir -p /data
ONBUILD RUN chmod 777 /data 
ONBUILD WORKDIR /go/src/github.com/mingderwang/onion
ONBUILD COPY . /go/src/github.com/mingderwang/onion
ONBUILD RUN go install 
ONBUILD RUN onion migratedb

FROM golang:1.5

ADD . /go/src/github.com/mingderwang/chilli
WORKDIR /go//src/github.com/mingderwang/chilli

RUN go get github.com/mingderwang/ginger
RUN go generate  
RUN go get ./... 
RUN go build . 
RUN go install . 
RUN chilli migratedb
CMD ["/go/bin/chilli"]
EXPOSE 8080

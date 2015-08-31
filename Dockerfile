FROM golang:1.5

RUN go get github.com/mingderwang/ginger
RUN go get github.com/tools/godep
RUN go get github.com/mingderwang/onion
RUN onion migratedb
CMD onion
EXPOSE 8080

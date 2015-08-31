FROM debian:wheezy

RUN apt-get update -y && apt-get install --no-install-recommends -y -q \
                         curl \
                         build-essential \
                         ca-certificates \
                         git mercurial bzr \
               && rm -rf /var/lib/apt/lists/*

ENV GOVERSION 1.5
RUN mkdir /goroot && mkdir /gopath
RUN curl https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz \
           | tar xvzf - -C /goroot --strip-components=1

ENV GOPATH /gopath
ENV GOROOT /goroot
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

ENV foo /gopath/src/onion
WORKDIR ${foo}  
ADD . $foo
RUN go get github.com/mingderwang/ginger
RUN go get github.com/tools/godep
RUN go get github.com/mingderwang/onion
RUN onion migratedb
CMD onion
EXPOSE 8080

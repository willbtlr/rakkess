FROM golang:alpine

RUN apk add make git

RUN mkdir -p /go/src/github.com/willbtlr/rakkess/

WORKDIR /go/src/github.com/willbtlr/rakkess/

CMD git clone --depth 1 https://github.com/willbtlr/rakkess.git . && \
    make all && \
    mv out/* /go/bin

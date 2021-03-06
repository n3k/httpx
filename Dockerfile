FROM golang:1.14-alpine AS build-env

RUN apk add --no-cache --upgrade git openssh-client ca-certificates
RUN go get -u github.com/golang/dep/cmd/dep
WORKDIR /go/src/app

# Install
RUN go get -u github.com/n3k/httpx/cmd/httpx

ENTRYPOINT ["httpx"]
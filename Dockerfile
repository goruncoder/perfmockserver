FROM golang:1.11.10-alpine3.9 as builder
# installing git
RUN apk update && apk upgrade && \
apk add --no-cache git
# setting working directory
WORKDIR /go/src/app
# installing dependencies
RUN go get github.com/sirupsen/logrus
RUN go get github.com/buaazp/fasthttprouter
RUN go get github.com/valyala/fasthttp
COPY / /go/src/app/
RUN go build -o mock

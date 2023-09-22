FROM alpine:latest

LABEL github=""

WORKDIR /app

COPY ./hello.txt ./

CMD cat ./hello.txt

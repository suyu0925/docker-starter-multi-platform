FROM golang:alpine AS builder

LABEL stage=gobuilder

WORKDIR /build

COPY ./main.go ./
RUN go build -ldflags="-s -w" -o /app/main ./main.go


FROM alpine:latest

ARG TARGETPLATFORM
ENV TARGETPLATFORM=$TARGETPLATFORM

WORKDIR /app

COPY --from=builder /app/main /app/main

CMD ["./main"]

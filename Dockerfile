# Build the manager binary
FROM golang:1.14 as builder

# Copy in the go src
WORKDIR /go/src/github.com/Bo0km4n/httpstatuscodes
COPY . .

# Build
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o .

# Copy the binary into a thin image
FROM alpine:3.9
WORKDIR /
COPY --from=builder /go/src/github.com/Bo0km4n/httpstatuscodes .
EXPOSE 9696
ENTRYPOINT ["/httpstatuscodes"]
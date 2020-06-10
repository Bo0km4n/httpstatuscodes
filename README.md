# httpstatuscodes

httpstatuscodes is a simple HTTP server.
It returns empty response with any HTTP status codes defined on https://httpstatuses.com/.

## How To Use

### On Local Machine

```
go build .
./httpstatuscodes

# On another terminal window
curl -i localhost:9696/500
HTTP/1.1 504 Gateway Timeout
Date: Mon, 29 Jun 2020 20:26:48 GMT
Content-Length: 0
```

### On Kubernetes

```
# Create Deployment and Service
kubectl apply -f deployment.yaml

# Create Ingress Controller
kubectl apply -f ingress.yaml

# Request with status code
curl -H "host: statuscodes.info" 10.100.100.100/200
```

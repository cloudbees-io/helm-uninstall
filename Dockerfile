FROM alpine/helm:3.17.0
## Removed wget due Vulnerability ##
RUN apk del wget

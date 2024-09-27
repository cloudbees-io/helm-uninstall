FROM alpine/helm:3.16.1
## Removed wget due Vulnerability ##
RUN apk del wget

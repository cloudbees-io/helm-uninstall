FROM alpine/helm:3.13.3

# Install aws-cli
RUN apk update && \
    apk add --no-cache aws-cli
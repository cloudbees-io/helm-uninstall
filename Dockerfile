FROM alpine/helm:3.14.4

# Install aws-cli
RUN apk update && \
    apk add --no-cache aws-cli
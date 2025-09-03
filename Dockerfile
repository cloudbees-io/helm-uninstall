FROM alpine/helm:3.18.6
# Update Packages to address Security Issues
RUN set -eux; \
    apk upgrade --no-cache apk-tools \
                           musl \
                           busybox \
                           busybox-binsh \
                           alpine-release \
                           libcrypto3 \
                           libssl3 \
                           ssl_client \
                           libcurl \
                           curl \
                           musl-utils \
                           yq-go

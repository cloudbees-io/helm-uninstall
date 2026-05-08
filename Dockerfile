FROM alpine/helm:3.20.1
# Update Packages to address Security Issues
# CVE-2026-31789: Ensure libcrypto3 >= 3.5.6-r0
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
                           yq-go; \
    apk upgrade --no-cache pcre2; \
    apk add --no-cache libexpat=2.7.4-r0; \
    apk info libcrypto3 | grep -E "libcrypto3-[0-9]" || true

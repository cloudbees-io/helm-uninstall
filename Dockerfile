FROM alpine/helm:3.18.2
# Update Packages to address Security Issues 
RUN set -eux; \
    apk upgrade --no-cache apk-tools>2.14.6-r3 \
                           musl>1.2.5-r9 \
                           busybox>1.37.0-r12 \
                           busybox-binsh>1.37.0-r12 \
                           alpine-release>3.21.3-r0 \
                           libcrypto3>3.3.3-r0 \
                           libssl3>3.3.3-r0 \
                           ssl_client>1.37.0-r12 \
                           libcurl>8.12.1-r0 \
                           curl>8.12.1-r0 \
                           musl-utils>1.2.5-r9 \
                           yq-go>4.44.5-r2

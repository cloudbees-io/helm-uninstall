FROM alpine/helm:3.20.1
# Update Packages to address Security Issues
# CVE-2026-31789: Upgrade libcrypto3 from configured repositories to pick up available fixes
RUN set -eux; \
    apk upgrade --no-cache apk-tools \
                           musl \
                           busybox \
                           busybox-binsh \
                           alpine-release \
                           libssl3 \
                           ssl_client \
                           libcurl \
                           curl \
                           musl-utils \
                           yq-go; \
    apk upgrade --no-cache pcre2; \
    apk add --no-cache libexpat=2.7.4-r0 \
                       "libcrypto3>=3.5.6-r0"; \
    apk info -e libcrypto3; \
    installed_version="$(apk info -v libcrypto3 | sed -n 's/^libcrypto3-//p')"; \
    [ -n "$installed_version" ]; \
    [ "$(apk version --test "$installed_version" "3.5.6-r0")" != "<" ]

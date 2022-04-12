FROM alpine:3.4
MAINTAINER José Moreira <jose.moreira@findhit.com>

ENV NODE_PREFIX=/usr/local \
    NODE_VERSION=latest \
    NPM_VERSION=latest \
    YARN_VERSION=latest \
    NODE_SOURCE=/usr/src/node \
    BASE_APKS="bash libgcc libstdc++ openssl ca-certificates" \
    BUILD_APKS="git curl wget bzip2 tar make gcc clang g++ python linux-headers paxctl binutils-gold autoconf bison zlib-dev openssl-dev" \
    NODE_CONFIG_FLAGS="--shared-openssl"

RUN [ "${NODE_VERSION}" == "latest" ] && { \
        DOWNLOAD_PATH=https://nodejs.org/dist/node-latest.tar.gz; \
    } || { \
        DOWNLOAD_PATH=https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz; \
    }; \
    apk add --update $BASE
FROM alpine:3.12.0
RUN apk update && apk add \
    bash \
    coreutils \
    findutils \
    gawk \
    git \
    && rm -rf /var/cache/apk/*

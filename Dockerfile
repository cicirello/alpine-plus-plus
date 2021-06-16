# Copyright (c) 2020 Vincent A. Cicirello
# https://www.cicirello.org
# Source repository: https://github.com/cicirello/alpine-plus-plus
# Source licensed under the MIT License: https://github.com/cicirello/alpine-plus-plus/blob/master/LICENSE
FROM alpine:3.14.0
LABEL maintainer="development@cicirello.org" \
    org.opencontainers.image.description="A lightweight docker image for shell scripting and git, \
    consisting of Alpine Linux with the addition of bash, coreutils, findutils, gawk, and git." \
    org.opencontainers.image.authors="Vincent A Cicirello, development@cicirello.org, https://www.cicirello.org/" \
    org.opencontainers.image.source="https://github.com/cicirello/alpine-plus-plus" \
    org.opencontainers.image.title="alpine-plus-plus" 
RUN apk update && apk add \
    bash \
    coreutils \
    findutils \
    gawk \
    git \
    && rm -rf /var/cache/apk/*

# Copyright (c) 2020 Vincent A. Cicirello
# https://www.cicirello.org
# Source repository: https://github.com/cicirello/alpine-plus-plus
# Source licensed under the MIT License: https://github.com/cicirello/alpine-plus-plus/blob/master/LICENSE
FROM alpine:3.12.0
LABEL maintainer="development@cicirello.org"
RUN apk update && apk add \
    bash \
    coreutils \
    findutils \
    gawk \
    git \
    && rm -rf /var/cache/apk/*

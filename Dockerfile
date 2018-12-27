FROM ruby:alpine as build-stage

RUN set -x \
    && apk --no-cache --update add \
        bash \
        ca-certificates \
        zlib \
        wget \
    && wget -qO- "https://packages.cloudfoundry.org/stable?release=linux64-binary&source=github" | tar -zx && mv cf /usr/local/bin
FROM alpine:3.8

MAINTAINER "Audite Marlow <github.com/AuditeMarlow>"

RUN apk --no-cache --update add npm \
    && npm install npm@6.3.0 -g

VOLUME /app

WORKDIR /app

ENTRYPOINT ["npm"]

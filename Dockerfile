FROM alpine:3.8

MAINTAINER "Audite Marlow <github.com/AuditeMarlow>"

VOLUME /app

WORKDIR /app

RUN apk --no-cache --update add npm \
    && npm install npm@6.3.0 -g \
    && addgroup  app \
    && adduser -D -G app app \
    && chown -R app:app /app

USER app

ENTRYPOINT ["npm"]

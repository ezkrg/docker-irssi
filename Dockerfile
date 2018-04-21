FROM ezkrg/sshd:latest

RUN apk add --no-cache --update \
      irssi irssi-perl \
      screen \
 && addgroup -g 1000 irssi \
 && adduser -G irssi -s /bin/sh -u 1000 -D irssi
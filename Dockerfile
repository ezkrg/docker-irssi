FROM ezkrg/sshd:latest

RUN apk add --no-cache --update \
      irssi irssi-perl \
      screen \
 && apk add --no-cache --update --virtual .build-dep shadow \
 && groupadd -g 1000 irssi \
 && useradd -g irssi -s /bin/sh -u 1000 -p '*' -m -d /home/irssi -c 'Irssi User' irssi \
 && apk del .build-dep
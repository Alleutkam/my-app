FROM alpine:latest

RUN apk add --no-cache bash

VOLUME /data

COPY todo.sh /usr/local/bin/todo
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /usr/local/bin/todo /entrypoint.sh

WORKDIR /data

ENTRYPOINT ["/entrypoint.sh"]

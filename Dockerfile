FROM alpine:3.11.6

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.11/community" >> /etc/apk/repositories; \
    apk update && apk add --no-cache bash shellcheck

RUN bash --version && shellcheck --version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

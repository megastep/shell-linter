FROM alpine:latest

RUN apk update && apk add --no-cache bash shellcheck

RUN bash --version && shellcheck --version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

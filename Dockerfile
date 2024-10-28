FROM alpine:3.19

LABEL maintainer="Ian Belcher <github.com@ianbelcher.me>"

RUN apk add --no-cache curl aws-cli jq

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

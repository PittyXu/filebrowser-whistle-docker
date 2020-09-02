# whistle for Dockerfile
FROM alpine:latest

ENV version=2.5.19

RUN set -ex && \
#    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add --no-cache bash && \
    apk add --no-cache  nodejs-npm && \
    npm i -g whistle@${version}

ENTRYPOINT ["w2", "run"]

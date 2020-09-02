FROM filebrowser/filebrowser as filebrowser

ENV version=2.5.17

RUN set -ex && \
#    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add --no-cache bash git openssh zip unzip && \
    apk add --no-cache  nodejs-npm && \
    npm i -g whistle@${version}

ENTRYPOINT ["w2", "run"]



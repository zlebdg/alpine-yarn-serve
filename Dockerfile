FROM alpine:3.10.1

# RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

RUN apk --update add yarn bash && yarn add global serve && rm -rf /var/cache/apk/*

EXPOSE 5000

CMD yarn serve ./dist/

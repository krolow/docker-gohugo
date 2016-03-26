FROM alpine:3.1
MAINTAINER Vinícius Krolow <krolow@gmail.com> (@krolow)

RUN apk update
RUN apk add curl bash tar && rm -rf /var/cache/apk/*

ENV HUGO_VERSION 0.15

RUN curl -O -J -L https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux_amd64.tar.gz
RUN tar -zxvf hugo_${HUGO_VERSION}_linux_amd64.tar.gz
RUN mv /hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/bin/hugo
RUN rm -rf /hugo_${HUGO_VERSION}_linux_amd64 hugo_${HUGO_VERSION}_linux_amd64.tar.gz

EXPOSE 1313

ENV HOME /root
VOLUME ${HOME}/hugo
WORKDIR ${HOME}/hugo
ENTRYPOINT ["hugo"]

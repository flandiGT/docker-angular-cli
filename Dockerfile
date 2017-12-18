FROM node:9.3.0-alpine

MAINTAINER https://github.com/adorsys/dockerhub-angular-cli

RUN apk update \
  && apk add --update python

# needed to fix infinite loop during installation
# https://github.com/angular/angular-cli/issues/7389
USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
RUN npm install -g @angular/cli@1.6.1

USER root
RUN apk del python \
      && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
      && npm cache clean --force

USER node
RUN mkdir -p /home/node/src

VOLUME /home/node/src
WORKDIR /home/node/src

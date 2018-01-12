FROM node:8.9.4-alpine

MAINTAINER https://github.com/adorsys/dockerhub-angular-cli

RUN apk update \
  && apk add --update python

# needed to fix infinite loop during installation
# https://github.com/angular/angular-cli/issues/7389
USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
RUN npm install -g @angular/cli@1.6.4

USER root
RUN rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
      && npm cache clean --force

RUN mkdir -p /opt/src

VOLUME /opt/src
WORKDIR /opt/src

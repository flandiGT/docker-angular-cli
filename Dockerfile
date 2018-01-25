FROM node:8.9.4-alpine

MAINTAINER https://github.com/adorsys/dockerhub-angular-cli

RUN apk update \
  && apk add --update python

# needed to fix infinite loop during installation
# https://github.com/angular/angular-cli/issues/7389
RUN mkdir /root/.npm-global
ENV PATH=/root/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/root/.npm-global
RUN npm install --unsafe-perm -g @angular/cli@1.6.5 --allow-root

RUN npm cache verify && npm cache clean --force
RUN rm -rf /tmp/* /var/cache/apk/* *.tar.gz

RUN mkdir -p /opt/src

VOLUME /opt/src
WORKDIR /opt/src

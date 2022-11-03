# STAGE 1 - run build process
FROM node:14-alpine AS builder-stage
RUN apk update
RUN apk add git
WORKDIR /config/env
RUN yarn install --lock-file
RUN yarn build-i18n
Run yarn watch-i18n
RUN yarn build-css
RUN yean build

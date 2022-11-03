# STAGE 1 - run build process
FROM node:14-alpine AS builder-stage
RUN apk update
RUN apk add git
WORKDIR /usr/src
RUN yarn install --lock-file
RUN yarn watch-i18n
RUN yarn watch-css
COPY . .
RUN yarn build-css
RUN yean build

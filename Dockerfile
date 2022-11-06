# STAGE 1 - run build process
FROM node:14-alpine AS builder-stage
RUN apk update
RUN apk add git
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
RUN npm install -g npm@8.10.0
RUN yarn install --lockfile
RUN yarn build-i18n
Run yarn watch-i18n
RUN yarn build
RUN yean build-css

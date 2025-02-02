FROM node:16-slim

WORKDIR /usr/app

COPY package.json .
COPY yarn.lock .
COPY common common
COPY services/authenticator services/authenticator

RUN yarn workspace authenticator install

CMD yarn workspace authenticator run dev
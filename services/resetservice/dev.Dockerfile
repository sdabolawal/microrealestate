FROM node:16-slim

WORKDIR /usr/app

COPY package.json .
COPY yarn.lock .
COPY common common
COPY services/resetservice services/resetservice

RUN yarn workspace resetservice install

CMD yarn workspace resetservice run dev
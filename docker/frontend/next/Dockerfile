FROM node:20-alpine

WORKDIR /usr/src/client

RUN apk update && apk add --no-cache git

COPY ./client/package.json ./client/yarn.lock ./

RUN corepack enable
RUN yarn install

COPY ./client/src ./

EXPOSE 3000

CMD ["node", "server.js"]

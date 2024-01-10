FROM node:20-alpine

WORKDIR /usr/src/client

RUN apk update && apk add --no-cache git build-base pkgconfig cairo pango libpng jpeg giflib librsvg \
  libjpeg-turbo-dev \
  giflib-dev \
  libpng-dev \
  cairo-dev \
  pango-dev

COPY ./client/package.json ./client/yarn.lock ./

RUN corepack enable
RUN yarn install

COPY ./client/src ./

EXPOSE 3000

CMD ["node", "server.js"]

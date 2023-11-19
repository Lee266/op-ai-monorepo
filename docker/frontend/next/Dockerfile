FROM node:20-alpine

WORKDIR /usr/src/client

# COPY ./client/package.json ./client/yarn.lock ./
COPY ./client ./

RUN corepack enable
RUN yarn install
# RUN yarn build

EXPOSE 3000

CMD ["node", "server.js"]

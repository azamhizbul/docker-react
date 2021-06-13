FROM node:alpine

WORKDIR /app

COPY package.json /app/package.json

COPY yarn.lock /app/yarn.lock

ENV PATH /app/node_modules/.bin:$PATH

COPY . ./

RUN yarn install

CMD ["yarn", "start"]
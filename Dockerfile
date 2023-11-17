FROM node:18-alpine

WORKDIR /backend/

COPY . .

RUN npm i @serverless/compose --save-dev
RUN npm i -g serverless

ENTRYPOINT [ "serverless" ]
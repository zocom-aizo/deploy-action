FROM node:18-alpine

RUN npm i @serverless/compose --save-dev
RUN npm i -g serverless

ENTRYPOINT [ "serverless" ]
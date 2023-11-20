FROM nikolaik/python-nodejs:python3.10-nodejs18-slim

WORKDIR /backend/

COPY . .

RUN npm i @serverless/compose --save-dev
RUN npm i -g serverless

ENTRYPOINT [ "serverless", "$1" ]
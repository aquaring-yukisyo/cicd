FROM node:18.14.2-alpine3.17

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./
COPY src ./
COPY appspec.yml ./
COPY buildspec.yml ./
COPY imagedefinitions.json ./

RUN npm install

ENTRYPOINT [ "npm", "start" ]
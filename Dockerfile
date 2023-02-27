FROM --platform=linux/x86_64 node:18.14.2-alpine3.17

WORKDIR /usr/src/app

COPY ["package.json", "package-lock.json", "./"]


RUN npm install

COPY . .

ENTRYPOINT [ "npm", "start" ]
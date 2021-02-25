FROM node
MAINTAINER Nicolas DESPRIET

RUN npm install -g @angular/cli

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

ENV PATH /app/node_modules/.bin:$PATH

RUN npm install

EXPOSE 4200

CMD ng serve --host 0.0.0.0




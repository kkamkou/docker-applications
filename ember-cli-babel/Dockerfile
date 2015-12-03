FROM node:latest

MAINTAINER Kanstantsin Kamkou <kkamkou@gmail.com>

RUN npm install -g ember-cli ember-cli-babel babel-preset-es2015 phantomjs

WORKDIR /opt

VOLUME ["/opt"]

EXPOSE 4200 49152

ENTRYPOINT ["ember"]

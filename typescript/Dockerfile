FROM node:6

MAINTAINER Kanstantsin Kamkou <kkamkou@gmail.com>

WORKDIR /opt

ENV PATH $PATH:/usr/local/lib/node_modules/bin

RUN npm install -g typescript

VOLUME ["/opt"]

ENTRYPOINT ["tsc"]

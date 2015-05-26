FROM google/nodejs

MAINTAINER Kanstantsin Kamkou <kkamkou@gmail.com>

WORKDIR /opt

RUN npm install -g npm && npm install -g eslint

VOLUME ["/opt"]

ENTRYPOINT ["eslint"]

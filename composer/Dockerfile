FROM php:cli

MAINTAINER Kanstantsin Kamkou <kkamkou@gmail.com>

WORKDIR /opt

RUN echo "deb http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list \
  && echo "deb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list \
  && curl http://www.dotdeb.org/dotdeb.gpg | apt-key add - \
  && apt-get update \
  && apt-get install -y git mercurial subversion \
  && echo "memory_limit=1G" > /usr/local/etc/php/conf.d/memory-limit.ini \
  && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
  && export PHPV=$(php -v | head -1 | sed -e 's/PHP \([0-9+]\)\..*/\1/') \
  && apt-get install -y zlib1g zlib1g-dev \
  && apt-get install -y "php${PHPV}-json" "php${PHPV}-xdebug" \
  && pecl install zip \
  && echo "extension=zip.so" > /usr/local/etc/php/conf.d/extension-zip.ini \
  && echo "zend_extension=`find / -name 'xdebug.so' 2> /dev/null | head -1`" > /usr/local/etc/php/conf.d/xdebug.ini

VOLUME ["/opt"]

ENTRYPOINT ["composer"]

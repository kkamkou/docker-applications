FROM maven:3

WORKDIR /opt/app

ENV MAVEN_OPTS "-Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512m"
ENV DEBIAN_FRONTEND noninteractive

RUN git clone --depth 1 -b trunk https://git-wip-us.apache.org/repos/asf/flume.git .

RUN wget "https://issues.apache.org/jira/secure/attachment/12857485/FLUME-3021-0.patch" \
  && git apply FLUME-3021-0.patch

RUN apt-get update \
  && apt-get install libprotobuf-java \
  && mvn clean package -DskipTests

RUN tar -xzf flume-ng-dist/target/apache-flume-1.8.0-SNAPSHOT-bin.tar.gz -C /opt \
  && rm -rf /opt/app \
  && mv /opt/apache-flume-1.8.0-SNAPSHOT-bin /opt/app

RUN mkdir -p plugins.d/elasticsearch/libext && ( \
    cd plugins.d/elasticsearch/libext \
    && wget "http://central.maven.org/maven2/org/elasticsearch/client/transport/5.2.2/transport-5.2.2.jar" \
    && wget "http://central.maven.org/maven2/org/elasticsearch/plugin/transport-netty3-client/5.2.2/transport-netty3-client-5.2.2.jar" \
    && wget "http://central.maven.org/maven2/org/elasticsearch/plugin/transport-netty4-client/5.2.2/transport-netty4-client-5.2.2.jar" \
    && wget "http://central.maven.org/maven2/org/elasticsearch/plugin/lang-mustache-client/5.2.2/lang-mustache-client-5.2.2.jar" \
    && wget "http://central.maven.org/maven2/org/elasticsearch/plugin/reindex-client/5.2.2/reindex-client-5.2.2.jar" \
    && wget "http://central.maven.org/maven2/org/elasticsearch/plugin/percolator-client/5.2.2/percolator-client-5.2.2.jar" \
    && wget "http://central.maven.org/maven2/io/netty/netty-all/4.1.9.Final/netty-all-4.1.9.Final.jar" \
  )

RUN wget "https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.2.2.tar.gz" \
  && tar -xzf elasticsearch-5.2.2.tar.gz -C /opt \
  && unlink elasticsearch-5.2.2.tar.gz \
  && mv /opt/elasticsearch-5.2.2/lib/* plugins.d/elasticsearch/libext/ \
  && rm -rf /opt/elasticsearch-5.2.2

RUN rm lib/jackson-core-*.jar \
  && mkdir -p plugins.d/rabbitmq-flume-source/lib \
  && wget "https://github.com/aweber/rabbitmq-flume-plugin/releases/download/1.0.3/rabbitmq-flume-plugin-standalone-1.0.3.jar" \
    -O plugins.d/rabbitmq-flume-source/lib/rabbitmq-flume-source.jar

VOLUME "/opt/app/config"

ENTRYPOINT ["bin/flume-ng"]

FROM maven:3.3.3

WORKDIR /opt/app

ENV MAVEN_OPTS "-Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512m"
ENV DEBIAN_FRONTEND noninteractive

RUN git clone --depth 1 -b flume-1.7 https://git-wip-us.apache.org/repos/asf/flume.git .

RUN apt-get update \
  && apt-get install libprotobuf-java \
  && mvn clean package -DskipTests

RUN tar -xzf flume-ng-dist/target/apache-flume-1.7.0-SNAPSHOT-bin.tar.gz -C /opt \
  && rm -rf /opt/app \
  && mv /opt/apache-flume-1.7.0-SNAPSHOT-bin /opt/app

RUN mkdir -p plugins.d/elasticsearch/libext \
  && wget "https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.3.1/elasticsearch-2.3.1.tar.gz" \
  && tar -xzf elasticsearch-2.3.1.tar.gz -C /opt \
  && unlink elasticsearch-2.3.1.tar.gz \
  && mv /opt/elasticsearch-2.3.1/lib/* plugins.d/elasticsearch/libext/ \
  && rm -rf /opt/elasticsearch-2.3.1

RUN rm lib/guava-*.jar \
  && rm lib/jackson-core-*.jar \
  && mkdir -p plugins.d/rabbitmq-flume-source/lib \
  && wget "https://github.com/aweber/rabbitmq-flume-plugin/releases/download/1.0.3/rabbitmq-flume-plugin-standalone-1.0.3.jar" \
    -O plugins.d/rabbitmq-flume-source/lib/rabbitmq-flume-source.jar \
  && mkdir -p plugins.d/elasticsearch-sink/lib \
  && wget "https://github.com/lucidfrontier45/ElasticsearchSink2/releases/download/1.0/elasticsearch-sink2-1.0.jar" \
    -O plugins.d/elasticsearch-sink/lib/elasticsearch-sink.jar

ENTRYPOINT ["/bin/bash"]

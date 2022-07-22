FROM ghcr.io/fleeksoft/hbase/hdfs:3.3.3.2 as hadoop

#FROM openjdk:8u171-jre-alpine3.8
#FROM openjdk:8u332-jre
FROM library/openjdk:8-alpine

LABEL maintainer="cgiraldo@gradiant.org"
LABEL organization="gradiant.org"
ARG VERSION=2.4.13
ENV HBASE_VERSION=$VERSION

RUN apk add bash 
RUN apk add perl 
RUN apk add jruby
RUN apk add curl
RUN mkdir -p /opt
RUN wget -qO- --no-check-certificate https://dlcdn.apache.org/hbase/$HBASE_VERSION/hbase-$HBASE_VERSION-bin.tar.gz | tar xvz -C /opt
RUN ln -s /opt/hbase-$HBASE_VERSION /opt/hbase
RUN ln -s /opt/hbase-$HBASE_VERSION/conf /etc/hbase
RUN mkdir -p /opt/hbase-$HBASE_VERSION/logs

ENV HBASE_PREFIX=/opt/hbase-$HBASE_VERSION
ENV HBASE_CONF_DIR=/etc/hbase
ENV HBASE_CONF_hbase_cluster_distributed=true
ENV PATH $HBASE_PREFIX/bin/:$PATH

# Add hadoop native libraries for alpine
COPY --from=hadoop /opt/hadoop/lib/native/* /lib/



COPY entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]


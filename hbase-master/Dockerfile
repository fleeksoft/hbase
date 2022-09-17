ARG VERSION=2.4.14
FROM ghcr.io/fleeksoft/hbase/hbase-base:$VERSION

LABEL maintainer="fleeksoft@gmail.com"
LABEL organization="fleeksoft.com"

COPY run.sh /run.sh

ENV HBASE_CONF_hbase_master_info_port=60010

EXPOSE 16000 16010
EXPOSE 60010

CMD ["/run.sh"]
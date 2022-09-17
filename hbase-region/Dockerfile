ARG VERSION=2.4.14
FROM ghcr.io/fleeksoft/hbase/hbase-base:$VERSION

LABEL maintainer="fleeksoft@gmail.com"
LABEL organization="fleeksoft.com"

COPY run.sh /run.sh

EXPOSE 16020 16030

CMD ["/run.sh"]
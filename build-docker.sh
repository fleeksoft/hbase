#!/bin/bash

VERSION=2.4.13

docker build --platform=linux/amd64 --build-arg VERSION=$VERSION -t ghcr.io/fleeksoft/hbase/hbase-base:2.4.13 hbase-base
docker build --platform=linux/amd64 --build-arg VERSION=$VERSION -t ghcr.io/fleeksoft/hbase/hbase-master:2.4.13 hbase-master
docker build --platform=linux/amd64 --build-arg VERSION=$VERSION -t ghcr.io/fleeksoft/hbase/hbase-region:2.4.13 hbase-region

# docker tag gradiant/hbase-base:$VERSION gradiant/hbase-base:latest
# docker tag gradiant/hbase-master:$VERSION gradiant/hbase-master:latest
# docker tag gradiant/hbase-region:$VERSION gradiant/hbase-region:latest

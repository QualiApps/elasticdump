# ElasticDump

FROM gliderlabs/alpine

MAINTAINER Yury Kavaliou <yury_kavaliou@epam.com>

RUN apk --update add bash nodejs && \
    npm install -g elasticdump
ADD ./kibana-exported.json /data/kibana-exported.json

ENTRYPOINT ["/usr/bin/elasticdump", "--input=/data/kibana-exported.json"]
CMD []
FROM quay.io/prometheus/node-exporter:latest

ENV NODE_ID=none
ENV NODE_NAME=none

USER root

COPY conf /etc/node-exporter/

ENTRYPOINT  [ "/etc/node-exporter/docker-entrypoint.sh" ]
CMD [ "/bin/node_exporter" ]

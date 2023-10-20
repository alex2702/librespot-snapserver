FROM alpine:3.17.1

ARG LIBRESPOT_VERSION=0.4.2-r4
ARG SNAPCAST_VERSION=0.27.0-r4

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN apk add --no-cache bash
RUN apk add --no-cache librespot=${LIBRESPOT_VERSION}
RUN apk add --no-cache snapcast=${SNAPCAST_VERSION}
RUN apk add --no-cache sed

COPY run.sh /
CMD ["/run.sh"]

ENV DEVICE_NAME=Snapcast
EXPOSE 1704/tcp 1705/tcp

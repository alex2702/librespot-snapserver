FROM alpine:3.18

ARG LIBRESPOT_VERSION=0.4.2-r4
ARG SNAPCAST_VERSION=0.27.0-r4

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories
RUN apk add --no-cache bash librespot=${LIBRESPOT_VERSION} snapcast=${SNAPCAST_VERSION} sed

COPY run.sh /
CMD ["/run.sh"]

ENV DEVICE_NAME=Snapcast
EXPOSE 1704/tcp 1705/tcp

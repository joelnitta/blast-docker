FROM debian:stretch

MAINTAINER Joel Nitta <joelnitta@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
  ncbi-blast+=2.6.0-1 \
  && apt-get clean && apt-get purge

WORKDIR /home

ENTRYPOINT /bin/bash

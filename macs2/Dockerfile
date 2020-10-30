## Based on dceoy/macs2
# Set the base image to Ubuntu 16.04
FROM ubuntu:18.04

# File Author / Maintainer
MAINTAINER Rui Luis <rluis@medicina.ulisboa.pt>

ENV DEBIAN_FRONTEND noninteractive

ADD https://bootstrap.pypa.io/get-pip.py /tmp/get-pip.py

RUN set -e \
      && ln -sf bash /bin/sh \
      && ln -s python3 /usr/bin/python

RUN set -e \
      && apt-get -y update \
      && apt-get -y dist-upgrade \
      && apt-get -y install  \
        gcc python3-dev python3-distutils \
      && apt-get -y autoremove \
      && apt-get clean \
      && rm -rf /var/lib/apt/lists/*

RUN set -e \
      && /usr/bin/python3 /tmp/get-pip.py \
      && pip install -U --no-cache-dir pip numpy \
      && pip install -U --no-cache-dir macs2==2.2.7.1 \
      && rm -f /tmp/get-pip.py

ENTRYPOINT ["/usr/local/bin/macs2"]


FROM ubuntu:16.04 

MAINTAINER Pedro Barbosa <psbpedrobarbosa@gmail.com> 

WORKDIR /tools

RUN apt-get update && \
    apt-get install -y zlib1g-dev build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip git 

#seqtk
RUN git clone https://github.com/lh3/seqtk.git && cd seqtk && make && cp seqtk /usr/bin/ && cd .. && rm -rf seqtk
LABEL seqtk-version=1.2-r102-dirty

RUN apt-get remove git -y
RUN apt-get autoclean -y

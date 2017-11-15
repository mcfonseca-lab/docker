FROM ubuntu:16.04

MAINTAINER Rui Luis <ruisergioluis@gmail.com> 

RUN apt-get update && apt-get install -y \
        build-essential \
        gcc-multilib \
        curl \
        wget \
        cmake


# Install samtools
WORKDIR /docker
RUN wget https://github.com/samtools/samtools/releases/download/1.6/samtools-1.6.tar.bz2 && \
    tar -jxf samtools-1.6.tar.bz2 && \
    cd samtools-1.6 && \
    make && \
    make install && \
    cp samtools /usr/bin/




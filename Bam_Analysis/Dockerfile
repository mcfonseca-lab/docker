FROM ubuntu:16.04

MAINTAINER Rui Luis <ruisergioluis@gmail.com> 

RUN apt-get update && apt-get install -y \
        build-essential \
        gcc-multilib \
        curl \
        wget \
        cmake \
	zlib1g-dev \
	libncurses-dev \
	libbz2-dev \
	liblzma-dev
	python
	python-numpy
	r-base
	cython
	python-dev 
	python3-dev

# Install samtools
WORKDIR /docker
RUN wget https://github.com/samtools/samtools/releases/download/1.6/samtools-1.6.tar.bz2 && \
    tar -jxf samtools-1.6.tar.bz2 && \
    cd samtools-1.6 && \
    ./configure && \
    make && \
    make install && \
    cp samtools /usr/bin/


#Install Bed
WORKDIR /docker
RUN wget https://github.com/arq5x/bedtools2/releases/download/v2.26.0/bedtools-2.26.0.tar.gz && \
    tar -zxf  bedtools-2.26.0.tar.gz && \
    cd bedtools2  && \
    make && \
    make install 

#Install Setuptools to run RSeQC
RUN wget https://pypi.python.org/packages/0f/22/7fdcc777ba60e2a8b1ea17f679c2652ffe80bd5a2f35d61c629cb9545d5e/setuptools-36.7.2.zip && \ 
    unzip setuptools-36.7.2.zip && \
    cd setuptools-36.7.2 && \
    python setup.py install

#Install RSeQC
WORKDIR /docker
RUN wget http://downloads.sourceforge.net/project/rseqc/RSeQC-2.6.4.tar.gz && \
    tar -zxf RSeQC-2.6.4.tar.gz && \
    cd RSeQC-2.6.4 && \
    python ./setup.py build && \
    python ./setup.py install 



RUN rm -rf /docker/samtools-1.6
RUN rm -rf /docekr/bedtools2
RUN rm -rf /docker/RSeQC-2.6.4
RUN apt-get clean
RUN apt-get remove --yes --purge build-essential gcc-multilib  zlib1g-dev 


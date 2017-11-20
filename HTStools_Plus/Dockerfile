FROM argrosso/htstools:latest

MAINTAINER Rui Luis <ruisergioluis@gmail.com>

RUN apt-get update && apt-get install -y zlib1g-dev libjsoncpp-dev python-numpy python-pandas python-pysam python-scipy bamtools

WORKDIR /docker
RUN wget http://downloads.sourceforge.net/project/rseqc/RSeQC-2.6.4.tar.gz && \
    tar -zxf RSeQC-2.6.4.tar.gz && \
    cd RSeQC-2.6.4 && \
    python ./setup.py build && \
    python ./setup.py install

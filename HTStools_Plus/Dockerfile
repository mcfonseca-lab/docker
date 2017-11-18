FROM argrosso/htstools:latest

MAINTAINER Rui Luis <ruisergioluis@gmail.com>

WORKDIR /docker
RUN wget http://downloads.sourceforge.net/project/rseqc/RSeQC-2.6.4.tar.gz && \
    tar -zxf RSeQC-2.6.4.tar.gz && \
    cd RSeQC-2.6.4 && \
    python ./setup.py build && \
    python ./setup.py install


WORKDIR /docker
RUN wget https://github.com/pezmaster31/bamtools/archive/v2.4.2.tar.gz && \
    tar -zxf bamtools-2.4.2.tar.gz
RUN cd bamtools-2.4.2 && \
    ./configure && \
    make && \
    make install  
 
 

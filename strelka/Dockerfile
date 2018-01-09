FROM ubuntu:16.04 

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt> 

WORKDIR /tools

RUN apt-get update -qq && \
    apt-get install -qq bzip2 gcc g++ make python zlib1g-dev wget

#strelka v2.8.4
RUN wget https://github.com/Illumina/strelka/archive/v2.8.4.tar.gz && \
    tar -xvzf v2.8.4.tar.gz && \
    mkdir build && cd build && \
    ../strelka-2.8.4/configure --jobs=4 --prefix=/tools/strelka2 && \
    make -j4 install

ENV PATH "$PATH:/tools/strelka2/bin"
RUN rm -rf build && rm -rf *tar.gz && rm -rf strelka-2.8.4 
RUN apt-get autoclean -y

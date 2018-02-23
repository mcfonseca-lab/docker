FROM ubuntu:16.04 

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt> 

WORKDIR /tools

RUN apt-get update -qq && \
    apt-get install -qq bzip2 git gcc g++ make python zlib1g-dev wget

#strelka v2.8.4
RUN wget https://github.com/Illumina/strelka/archive/v2.8.4.tar.gz && \
    tar -xvzf v2.8.4.tar.gz && \
    mkdir build && cd build && \
    ../strelka-2.8.4/configure --jobs=4 --prefix=/tools/strelka2 && \
    make -j4 install

#gvcfgenotyper 2018.02.07_master_c9c81d3
RUN git clone https://github.com/Illumina/gvcfgenotyper.git && \
    cd gvcfgenotyper && make 

ENV PATH "$PATH:/tools/strelka2/bin:/tools/gvcfgenotyper/bin:"
RUN rm -rf build && rm -rf *tar.gz && rm -rf strelka-2.8.4 
RUN apt-get autoclean -y

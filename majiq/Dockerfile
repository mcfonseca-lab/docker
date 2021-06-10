FROM mcfonsecalab/python37_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

RUN apt-get update && apt-get install -y gcc make zlib1g-dev libbz2-dev liblzma-dev libncursesw5-dev libncurses5-dev libcurl4-openssl-dev g++

WORKDIR /usr/bin
RUN wget https://github.com/samtools/htslib/releases/download/1.10.2/htslib-1.10.2.tar.bz2
RUN tar -vxjf htslib-1.10.2.tar.bz2 

WORKDIR htslib-1.10.2
RUN ./configure && make && make install
ENV HTSLIB_LIBRARY_DIR=/usr/local/lib
ENV HTSLIB_INCLUDE_DIR=/usr/local/include
WORKDIR /python_env

RUN pip install git+https://bitbucket.org/biociphers/majiq_academic.git#egg=majiq
ADD majiq_wrapper.py /python_env/majiq
RUN chmod +x majiq && mv majiq /python_env/miniconda3/bin/

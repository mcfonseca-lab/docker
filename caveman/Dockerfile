FROM --platform=linux/amd64 docker.io/condaforge/mambaforge:23.3.1-1

LABEL maintainer="Pedro Silvestre <pedro.silvestre@medicina.ulisboa.pt>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        cmake \
        curl \
        g++ \
        gfortran \
        git \
        libblas-dev \
        libgsl-dev \
        liblapack-dev \
        python-setuptools \
        make \
        zlib1g-dev \
        build-essential \
        wget \
        liblzma-dev \
        libbz2-dev \
        libcurl4-openssl-dev \
        bzip2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install zlib from source
RUN apt-get install -y zlib1g-dev

# Install htslib version 1.3 from source
RUN wget https://github.com/samtools/htslib/releases/download/1.3/htslib-1.3.tar.bz2 && \
    tar -xjvf htslib-1.3.tar.bz2 && \
    cd htslib-1.3 && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf htslib-1.3 htslib-1.3.tar.bz2

# Install linasm
RUN wget 'https://sourceforge.net/projects/linasm/files/latest/download' -O linasm.tar.gz && \
    tar -xzvf linasm.tar.gz && \
    cd linasm-1.13\(stable\) && \
    make install

# Clone the CaVEMan repository
RUN git clone https://github.com/cancerit/CaVEMan && \
    cd CaVEMan && \
    ldconfig && \
    make HTSLOC="/usr/local/lib/" TEST_REF="testData/genome.fa.fai" && \
    cp bin/* /usr/local/bin/ && \
    cd ..

#docker run --platform=linux/amd64 -it --rm caveman /bin/bash
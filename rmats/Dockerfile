FROM docker.io/condaforge/mambaforge:23.3.1-1
LABEL maintainer="Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
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
       zlib1g-dev 

# Install dependencies
RUN mamba install -c anaconda more-itertools
RUN mamba install -c bioconda gcc cython=0.29.36 numpy r-essentials r-base star pysam pybedtools

# Install rMATS and pairadise
RUN git clone https://github.com/Xinglab/rmats-turbo.git
WORKDIR rmats-turbo
RUN ./build_rmats

# Install maser
RUN mamba install -c bioconda bioconductor-maser

#rmats2sashimi
RUN git clone https://github.com/Xinglab/rmats2sashimiplot.git
WORKDIR rmats2sashimiplot/
RUN ./2to3.sh && python ./setup.py install

WORKDIR /rmats-turbo
ADD run_maser.R .

LABEL rmats="4.1.2"
LABEL pairadise="1.0"
LABEL maser="1.18.0"
LABEL rmats2sashimi="2.0.4"

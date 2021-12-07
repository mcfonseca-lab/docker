FROM mcfonsecalab/python38_bio:latest
MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y --no-install-recommends  \
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

LABEL rmats="4.1.1"
LABEL pairadise="1.0"
LABEL maser="1.12.0"
LABEL rmats2sashimi="2.0.4"

RUN mamba install cython r-essentials r-base gcc

# Install rMATS and PAIRADISE
RUN git clone https://github.com/Xinglab/rmats-turbo.git
WORKDIR rmats-turbo
RUN ./build_rmats

# Install maser
RUN mamba install -c bioconda bioconductor-maser=1.12.0

#rmats2sashimi
RUN git clone https://github.com/Xinglab/rmats2sashimiplot.git
WORKDIR rmats2sashimiplot/
RUN ./2to3.sh && python ./setup.py install

WORKDIR /python_env/rmats-turbo
ADD run_maser.R .


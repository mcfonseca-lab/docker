FROM mcfonsecalab/python36_bio

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt> 

WORKDIR /tools

RUN apt-get update && \
    apt-get install -y git gcc g++ make zlib1g-dev bzip2 

RUN apt-get install -y libbz2-1.0 libbz2-dev libbz2-ocaml libbz2-ocaml-dev liblzma-dev

LABEL description="bcftools version 1.7-1-ge07034a (using htslib 1.7-22-gf9e5e35)"
RUN git clone git://github.com/samtools/htslib.git && git clone git://github.com/samtools/bcftools.git && cd bcftools && make

LABEL description="vcfanno version 0.2.8"
conda install -c bioconda vcfanno

ENV PATH "$PATH:/tools/bcftools"

RUN apt-get remove git -y
RUN apt-get autoclean -y

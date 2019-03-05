FROM mcfonsecalab/python37_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt> 

WORKDIR /tools

RUN apt-get update && \
    apt-get install -y git gcc g++ make zlib1g-dev bzip2 libbz2-1.0 libbz2-dev libbz2-ocaml libbz2-ocaml-dev liblzma-dev unzip libssl-dev libcurl4-openssl-dev

#Update conda, if new version is available
RUN conda update -n base conda

LABEL vt_version="0.5"
RUN git clone https://github.com/atks/vt.git && cd vt && make && make test && \
    cp vt /usr/local/bin && cd ../ && rm -rf vt/

LABEL vcfanno_version="0.3.1"
LABEL pyvcf_version="0.6.8"
LABEL pybedtools_version="0.8.0"
LABEL cyvcf2_version="0.10.8"
LABEL bcftools_version="1.9"
LABEL plink_version="v1.90b4"
LABEL scikit_allel="1.2.0"
RUN conda install -c bioconda vcfanno pyvcf pybedtools cyvcf2 bcftools plink && conda install -c conda-forge scikit-allel

LABEL hgvs_version="1.2.5.post1"
LABEL spliceai_version="1.2.1"
RUN pip install hgvs tensorflow spliceai


RUN apt-get remove git -y
RUN apt-get clean all -y

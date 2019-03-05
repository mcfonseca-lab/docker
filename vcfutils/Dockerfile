FROM mcfonsecalab/python37_bio

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt> 

WORKDIR /tools

RUN apt-get update && \
    apt-get install -y git gcc g++ make zlib1g-dev bzip2 libbz2-1.0 libbz2-dev libbz2-ocaml libbz2-ocaml-dev liblzma-dev unzip

#BCFTOOLS
LABEL bcftools="version 1.7-1-ge07034a (using htslib 1.7-22-gf9e5e35)"
RUN git clone git://github.com/samtools/htslib.git && git clone git://github.com/samtools/bcftools.git && cd bcftools && make
ENV PATH="$PATH:/tools/bcftools"

#Update conda, if new version is available
RUN conda update -n base conda
#Vt
LABEL Vt=""
RUN conda install -c bioconda vt && conda update vt 

#vcfanno, pyvcf, Cyvcf2, pybedtools
LABEL vcfanno="version 0.2.8"
LABEL pyvcf="0.6.8"
RUN conda install -c bioconda vcfanno pyvcf pybedtools cyvcf2

#scikit-allel
LABEL scikit-allel="1.1.10"
RUN conda install -c conda-forge scikit-allel

#hgvs, spliceai
LABEL cyvcf2="0.8.8"
RUN pip install hgvs spliceai

RUN apt-get remove git -y
RUN apt-get clean all -y

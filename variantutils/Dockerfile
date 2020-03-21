FROM mcfonsecalab/python37_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt> 

WORKDIR /tools

RUN apt-get update && \
    apt-get install -y git gcc g++ make zlib1g-dev bzip2 libbz2-1.0 libbz2-dev libbz2-ocaml libbz2-ocaml-dev liblzma-dev unzip libssl-dev libcurl4-openssl-dev

#Update conda, if new version is available
RUN conda update -n base conda

RUN git clone https://github.com/atks/vt.git && cd vt && make && make test && \
    cp vt /usr/local/bin && cd ../ && rm -rf vt/

#Install bcftools with plugins included
RUN git clone git://github.com/samtools/htslib.git && git clone git://github.com/samtools/bcftools.git 
RUN cd htslib && make && cd ../
RUN cd bcftools && make && cd ../
ENV PATH "$PATH:/tools/htslib"
ENV PATH "$PATH:/tools/bcftools"
ENV BCFTOOLS_PLUGINS "/tools/bcftools/plugins"

RUN conda install -c bioconda vcfanno pyvcf pybedtools cyvcf2 plink && conda install -c conda-forge scikit-allel
RUN pip install hgvs tensorflow spliceai

LABEL vt_version="v0.57721"
LABEL vcfanno_version="0.3.2"
LABEL pyvcf_version="0.6.8"
LABEL pybedtools_version="0.8.1"
LABEL cyvcf2_version="0.11.6"
LABEL bcftools_version="1.10.2"
LABEL plink_version="v1.90b612"
LABEL scikit_allel="1.2.1"
LABEL hgvs_version="1.2.5.post1"
LABEL spliceai_version="1.3.1"

RUN apt-get remove git -y
RUN apt-get clean all -y

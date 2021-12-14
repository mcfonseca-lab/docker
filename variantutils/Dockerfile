FROM mcfonsecalab/python38_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt> 

WORKDIR /tools

RUN apt-get install -y gcc g++ make zlib1g-dev libbz2-1.0 \
                       libbz2-dev libbz2-ocaml libbz2-ocaml-dev \
                       liblzma-dev unzip libcurl4-openssl-dev autoconf
RUN echo "deb http://security.ubuntu.com/ubuntu xenial-security main" >> /etc/apt/sources.list && apt update && apt-get install -y libssl1.0.0

#Install bcftools with plugins included
RUN git clone git://github.com/samtools/htslib.git && git clone git://github.com/samtools/bcftools.git 
RUN cd htslib && autoreconf -i && git submodule update --init --recursive && ./configure && make && make install && cd ../
RUN cd bcftools && make && cd ../
ENV PATH "$PATH:/tools/htslib"
ENV PATH "$PATH:/tools/bcftools"
ENV BCFTOOLS_PLUGINS "/tools/bcftools/plugins"

RUN mamba install -c bioconda vcfanno pybedtools cyvcf2 plink vt && conda install -c conda-forge scikit-allel
RUN pip install hgvs tensorflow spliceai

LABEL vt_version="0.5" 
LABEL vcfanno_version="0.3.3"
LABEL cyvcf2_version="0.30.14"
LABEL bcftools_version="1.14-20"
LABEL plink_version="v1.90b6.21"
LABEL scikit_allel="1.3.3"
LABEL hgvs_version="1.5.1"
LABEL spliceai_version="1.3.1"

RUN apt-get remove git -y
RUN apt-get clean all -y

FROM mcfonsecalab/python310_bio:latest

LABEL maintainer="Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>"

WORKDIR /tools

RUN apt-get install -y gcc g++ make zlib1g-dev libbz2-1.0 \
                       libbz2-dev libbz2-ocaml libbz2-ocaml-dev \
                       liblzma-dev unzip libcurl4-openssl-dev autoconf

#Install bcftools with plugins included
RUN git clone https://github.com/samtools/htslib.git && git clone https://github.com/samtools/bcftools.git 
RUN cd htslib && autoreconf -i && git submodule update --init --recursive && ./configure && make && make install && cd ../
RUN cd bcftools && make && cd ../
ENV PATH "$PATH:/tools/htslib"
ENV PATH "$PATH:/tools/bcftools"
ENV BCFTOOLS_PLUGINS "/tools/bcftools/plugins"

RUN mamba install -c bioconda vcfanno pybedtools cyvcf2 plink plink2 vt && mamba install -c conda-forge scikit-allel
RUN pip install --upgrade pip && pip cache purge 
RUN pip install --no-cache-dir hgvs tensorflow==2.11.0 spliceai==1.3.1

LABEL vt_version="0.5" 
LABEL vcfanno_version="0.3.3"
LABEL cyvcf2_version="0.30.22"
LABEL htslib_version="1.18-17-g5acbc15"
LABEL bcftools_version="1.18-13-g7a00a28a"
LABEL plink_version="v1.90b6.21"
LABEL plink2_version="v2.00a3.7"
LABEL scikit_allel="1.3.6"
LABEL hgvs_version="1.5.4"
LABEL spliceai_version="1.3.1"

RUN apt-get remove git -y
RUN apt-get clean all -y

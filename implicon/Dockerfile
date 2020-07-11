FROM mcfonsecalab/python37_bio

# File Author / Maintainer
MAINTAINER Rui Luis <rluis@medicina.ulisboa.pt>

ARG bismark_PACKAGE_VERSION=0.22.3
ARG snpsplit_PACKAGE_VERSION=0.3.4


RUN apt-get update
RUN apt-get install -y build-essential

RUN conda update -n base conda

#Add Bioconda Channels
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda

RUN conda install -y -c bioconda/label/main bismark==${bismark_PACKAGE_VERSION} snpsplit==${snpsplit_PACKAGE_VERSION}
RUN conda install -y biopython && conda update biopython



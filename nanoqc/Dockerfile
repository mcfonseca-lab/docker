FROM mcfonsecalab/python37_bio

MAINTAINER Rui Luis  <rluis@medicina.ulisboa.pt>

RUN apt-get update
RUN apt-get install -y  build-essential

RUN conda update -n base conda

LABEL VnanoQC="v0.8.1"
RUN conda install -c bioconda nanoqc=$VnanoQC

RUN apt-get autoclean -y


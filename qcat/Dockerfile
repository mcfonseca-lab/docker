FROM mcfonsecalab/python37_bio

MAINTAINER Rui Luis  <rluis@medicina.ulisboa.pt>

RUN apt-get update
RUN apt-get install -y build-essential

RUN conda update -n base conda

LABEL Vqcat="v1.1.0"
RUN conda install -c bioconda qcat=$Vqcat

RUN apt-get autoclean -y


FROM mcfonsecalab/python37_bio

MAINTAINER Rui Luis  <rluis@medicina.ulisboa.pt>

RUN apt-get update
RUN apt-get install -y  build-essential

RUN conda update -n base conda

LABEL Vnanofilt="v2.3.0"
RUN conda install -c bioconda nanofilt=$Vnanofilt

RUN apt-get autoclean -y


FROM mcfonsecalab/python37_bio

MAINTAINER Rui Luis  <rluis@medicina.ulisboa.pt>

RUN apt-get update
RUN apt-get install -y  build-essential

RUN conda update -n base conda

LABEL Vminimap2="v2.17"
RUN conda install -c bioconda minimap2=$Vminimap2

RUN apt-get autoclean -y


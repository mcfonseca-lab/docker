FROM mcfonsecalab/python37_bio

MAINTAINER Rui Luis  <rluis@medicina.ulisboa.pt>

RUN apt-get update
RUN apt-get install -y  build-essential

RUN conda update -n base conda

LABEL Vporechop="v0.2.3_seqan2.1.1"
RUN conda install -c bioconda poretools=$Vporechop

RUN apt-get autoclean -y


FROM mcfonsecalab/python36_bio 

MAINTAINER Rui Luis  <rluis@medicina.ulisboa.pt>

RUN apt-get update 
#RUN conda update -n base conda

LABEL irfinder="v1.2.3"
RUN conda install -c bioconda irfinder  

RUN apt-get autoclean -y

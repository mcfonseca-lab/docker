FROM ubuntu:16.04

MAINTAINER Rosina Savisaar <rsavisaar@medicina.ulisboa.pt>

WORKDIR /python_env
RUN apt-get update && apt-get install -y bzip2 wget libgl1-mesa-glx git && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p miniconda3

ENV PATH="$PATH:/python_env/miniconda3/bin/"

#Update conda
RUN conda update -n base conda

#Add Bioconda Channels
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda
 
RUN conda install -y -c bioconda pandas seaborn scipy numpy
RUN conda install -y biopython && conda update biopython
RUN pip install -U scikit-learn sklearn-pandas imbalanced-learn tensorflow

#Install bedtools and samtools
RUN conda install -c bioconda bedtools samtools

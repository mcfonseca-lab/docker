FROM ubuntu:18.04

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

WORKDIR /python_env
RUN apt-get update && apt-get install -y bzip2 wget libgl1-mesa-glx git && wget https://repo.anaconda.com/miniconda/Miniconda2-latest-Linux-x86_64.sh && \
bash Miniconda2-latest-Linux-x86_64.sh -b -p miniconda2

ENV PATH="$PATH:/python_env/miniconda2/bin/"

RUN conda update -n base conda
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda
 
RUN conda install -y -c bioconda pandas seaborn scipy numpy pysam pybedtools
RUN conda install -y biopython && conda update biopython

FROM ubuntu:18.04

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

WORKDIR /python_env
RUN apt-get update && apt-get install -y bzip2 wget libgl1-mesa-glx git && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p miniconda3

ENV PATH="$PATH:/python_env/miniconda3/bin/"
#Update conda
#RUN conda update -n base conda

#Add Bioconda Channels
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda
 
RUN conda install -y -c bioconda pandas==1.0.3 seaborn==0.10.1 scipy==1.4.1 numpy==1.18.1 mygene==3.1.0 \
    pyBigWig==0.3.17 pysam==0.16.0 py2bit==0.3.0
RUN conda install -y biopython && conda update biopython
RUN pip install 'plotnine[all]' natsort

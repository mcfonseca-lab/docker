FROM ubuntu:20.04

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

WORKDIR /python_env
RUN apt-get update && apt-get install -y bzip2 wget libgl1-mesa-glx git && wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh && \
    bash Miniconda3-py38_4.10.3-Linux-x86_64.sh -b -p miniconda3

ENV PATH="$PATH:/python_env/miniconda3/bin/"
RUN conda update -n base conda

#Add Bioconda Channels
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda
 
RUN conda install -c conda-forge mamba
RUN mamba install -y -c bioconda pandas seaborn scipy numpy mygene \
    pyBigWig pysam py2bit matplotlib pybedtools pyfaidx pip samtools 
RUN pip install 'plotnine[all]' natsort biopython

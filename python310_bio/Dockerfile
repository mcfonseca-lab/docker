FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

LABEL maintainer="Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>"

WORKDIR /python_env
RUN apt-get update && apt-get install -y libarchive-dev libgl1-mesa-glx bzip2 wget git && wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.5.2-0-Linux-x86_64.sh && bash Miniconda3-py310_23.5.2-0-Linux-x86_64.sh -b -p miniconda3

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

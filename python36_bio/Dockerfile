FROM ubuntu:16.04

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

WORKDIR /python_env

RUN apt-get update && apt-get install -y bzip2 wget libgl1-mesa-glx && wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p miniconda3

ENV PATH "$PATH:/python_env/miniconda3/bin"

RUN conda install -c miniconda numpy pandas seaborn scipy

FROM mcfonsecalab/python27_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

ADD dependencies.txt /tmp/dependencies.txt

RUN conda update -n base conda
RUN conda update --all 
RUN conda install --yes --file /tmp/dependencies.txt 
RUN apt-get install -y libgsl-dev

#Add maser script
ADD run_maser.R /python_env/run_maser.R
RUN conda install -c conda-forge r-rlang=0.4.0
RUN conda install -c bioconda bioconductor-maser

#Get latest dev version
RUN wget https://sourceforge.net/projects/rnaseq-mats/files/MATS/beta/rMATS.4.0.3beta.tgz
RUN tar -xvzf rMATS.4.0.3beta.tgz && rm -rf rMATS.4.0.3beta.tgz 

RUN apt-get -y update && apt-get -y install libgsl-dev libgsl23 libgslcblas0 libgfortran3 libblas-dev liblapack-dev libgsl0-dev gfortran
WORKDIR /python_env/rMATS.4.0.3beta/rMATS-turbo-Linux-UCS4
RUN ln -s rmats.py rmats4.py && chmod 777 rmats4.py

WORKDIR /python_env
RUN echo '#!/bin/bash\npython /python_env/miniconda2/rMATS/RNASeq-MATS.py' > /usr/bin/rmats3.py && \
    chmod +x /usr/bin/rmats3.py
ENV PATH="${PATH}:/python_env/rMATS.4.0.3beta/rMATS-turbo-Linux-UCS4:/"

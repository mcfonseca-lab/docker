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
RUN wget https://sourceforge.net/projects/rnaseq-mats/files/MATS/rMATS.4.0.2.tgz
RUN tar -xvzf rMATS.4.0.2.tgz && rm -rf rMATS.4.0.2.tgz 

RUN apt-get -y update && apt-get -y install libgsl-dev libgsl23 libgslcblas0 libgfortran3 libblas-dev liblapack-dev libgsl0-dev gfortran
WORKDIR /python_env/rMATS.4.0.2/rMATS-turbo-Linux-UCS4
RUN ln -s rmats.py rmats4.py && chmod 777 rmats4.py
ENV PATH="${PATH}:/python_env/rMATS.4.0.2/rMATS-turbo-Linux-UCS4"

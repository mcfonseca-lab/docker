FROM mcfonsecalab/python27_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

ADD dependencies.txt /tmp/dependencies.txt
RUN conda update --all 
RUN conda install --yes --file /tmp/dependencies.txt 
RUN apt-get install -y libgsl-dev

#Get latest dev version
RUN wget https://sourceforge.net/projects/rnaseq-mats/files/MATS/beta/rMATS.4.0.3beta.tgz
RUN tar -xvzf rMATS.4.0.3beta.tgz && rm -rf rMATS.4.0.3beta.tgz 

FROM mcfonsecalab/python27_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>


ADD dependencies.txt /tmp/dependencies.txt
RUN conda update --all 
RUN conda install --yes --file /tmp/dependencies.txt 

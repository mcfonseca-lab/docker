FROM mcfonsecalab/python37_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

RUN conda install -c bioconda rmats
RUN conda install -c bioconda bioconductor-maser
ADD run_maser.R /python_env/run_maser.R

RUN git clone https://github.com/Xinglab/rmats2sashimiplot.git
WORKDIR rmats2sashimiplot/
RUN ./2to3.sh && python ./setup.py install
WORKDIR /python_env
RUN rm -rf rmats2sashimiplot

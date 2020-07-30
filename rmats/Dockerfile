FROM mcfonsecalab/python37_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

#rmats
RUN conda install -c bioconda rmats samtools
ADD run_maser.R /python_env/run_maser.R

#PAIRADISE and maser
RUN git clone https://github.com/Xinglab/rmats-turbo.git
WORKDIR rmats-turbo
RUN git clone https://github.com/Xinglab/PAIRADISE.git
RUN conda install -c conda-forge r-base==3.6.2
RUN Rscript install_r_deps.R
RUN conda install -c bioconda bioconductor-maser

#rmats2sashimi
RUN git clone https://github.com/Xinglab/rmats2sashimiplot.git
WORKDIR rmats2sashimiplot/
RUN ./2to3.sh && python ./setup.py install
WORKDIR /python_env
RUN rm -rf rmats2sashimiplot

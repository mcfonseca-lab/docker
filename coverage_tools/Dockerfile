FROM mcfonsecalab/python36_bio

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

RUN apt-get update 
RUN conda update -n base conda

LABEL mosdepth="v0.2.3"
LABEL goleft="v0.1.18"
LABEL deeptools="v3.0.1"
RUN conda install -c bioconda mosdepth goleft deeptools

ENV MOSDEPTH_Q0=NO_COVERAGE
ENV MOSDEPTH_Q1=LOW_COVERAGE
ENV MOSDEPTH_Q2=CALLABLE
ENV MOSDEPTH_Q3=HIGH_COVERAGE

RUN apt-get autoclean -y

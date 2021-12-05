FROM mcfonsecalab/python38_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

RUN apt-get update 
RUN conda update -n base conda

LABEL mosdepth="v0.3.2"
LABEL goleft="v0.4"
LABEL deeptools="v3.5.1"
RUN conda install -c bioconda mosdepth goleft deeptools

ENV MOSDEPTH_Q0=NO_COVERAGE
ENV MOSDEPTH_Q1=LOW_COVERAGE
ENV MOSDEPTH_Q2=CALLABLE
ENV MOSDEPTH_Q3=HIGH_COVERAGE

RUN apt-get autoclean -y

FROM docker.io/condaforge/mambaforge:23.3.1-1

LABEL maintainer="Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>"

LABEL mosdepth="v0.3.4"
LABEL goleft="v0.2.4"
LABEL deeptools="v3.5.3"
RUN mamba install -c bioconda mosdepth=0.3.4 goleft=0.2.4 deeptools=3.5.3

ENV MOSDEPTH_Q0=NO_COVERAGE
ENV MOSDEPTH_Q1=LOW_COVERAGE
ENV MOSDEPTH_Q2=CALLABLE
ENV MOSDEPTH_Q3=HIGH_COVERAGE

RUN apt-get autoclean -y
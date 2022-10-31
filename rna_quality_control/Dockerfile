FROM mcfonsecalab/python38_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

ENV RSEQC_VERSION 5.0.0
ENV MULTIQC_VERSION 1.13
RUN mamba update conda mamba

RUN mamba install -c bioconda rseqc multiqc

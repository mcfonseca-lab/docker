FROM docker.io/condaforge/mambaforge:23.3.1-1

LABEL maintainer="Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>"

ENV RSEQC_VERSION 5.0.1
ENV MULTIQC_VERSION 1.15
RUN mamba update conda mamba

RUN mamba install -c bioconda rseqc multiqc
FROM docker.io/condaforge/mambaforge:23.3.1-1

LABEL maintainer="Beatriz Silva <beatriz.silva@medicina.ulisboa.pt>"

ENV NANOTOOLS VERSION 0.1

RUN mamba install -c bioconda chopper=0.7.0
RUN mamba install -c nanoporetech -c conda-forge -c bioconda nanoporetech::pychopper=2.7.9

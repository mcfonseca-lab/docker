FROM docker.io/condaforge/mambaforge:23.3.1-1

RUN mamba install -y -n base -c bioconda fastp fastqc trim-galore unzip && \
    mamba clean --all --yes

WORKDIR /opt
RUN wget -c http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.39.zip && \
    unzip Trimmomatic-0.39.zip
WORKDIR /opt/Trimmomatic-0.39

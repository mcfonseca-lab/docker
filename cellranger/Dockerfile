##################################################################################
### Dockerfile for 10X Genomics Cell Ranger 				       ###
### Derived from https://hub.docker.com/r/litd/docker-cellranger/~/dockerfile/ ###
##################################################################################

# Based on
FROM centos:7

# File Author / Maintainer
MAINTAINER Rui Luis <rluis@medicina.ulisboa.pt>

# Install some utilities
RUN yum install -y \
     wget \
     which \
     unzip

# Install bcl2fastq v2.20
RUN cd /tmp/ && \
    wget https://support.illumina.com/content/dam/illumina-support/documents/downloads/software/bcl2fastq/bcl2fastq2-v2-20-0-linux-x86-64.zip && \
    unzip bcl2fastq2-v2-20-0-linux-x86-64.zip && \
    yum install -y --nogpgcheck bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm && \
    rm -f bcl2fastq2-v2-20-0-linux-x86-64.zip bcl2fastq2-v2.20.0.422-Linux-x86_64.rpm 
    
# Install cellranger v3.02
RUN cd /opt/ && \
    wget -O cellranger-3.0.2.tar.gz "http://cf.10xgenomics.com/releases/cell-exp/cellranger-3.0.2.tar.gz?Expires=1552605171&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTMuMC4yLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTU1MjYwNTE3MX19fV19&Signature=aaSJn0CNnGdULvDkdpJywfpeAeaE74YhlQwy5FvM1wgDrz1C5ES9pUKHovcyn6Ax0uy7QPyPePiNW-8QDdUQHbRRkT2IHUAO0MkV3SUJKT6-7ZiBd7pMkMxBxk7Johlw-IBJGXqiNMK9WQi3rgi-ny3759GplnwCJ6ecKHXjQi9vYSbug3bxmd8afYc133A8C7~orufoHwZ9Hl24iC1eK1PvBxujfoKh2ENgq7HRTjI5lMLncY1tzmLum4kVLUhusHOd2y~VhPb-8FAY5qa9vOpdMwI6sIuG5qWztF0bDbBNoiswC-W9oeM6gerxFX3XAvXXr~fPUtud132r52XROA__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA" && \
    tar zxvf cellranger-3.0.2.tar.gz && \
    rm -f cellranger-3.0.2.tar.gz

# path
ENV PATH /opt/cellranger-3.0.2:$PATH

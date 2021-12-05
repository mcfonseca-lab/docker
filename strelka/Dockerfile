FROM ubuntu:21.04 

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt> 

WORKDIR /tools

RUN apt-get update -qq && \
    apt-get install -qq bzip2 git gcc g++ make python zlib1g-dev libbz2-dev liblzma-dev wget

LABEL version="2.9.10"
LABEL gvcf_genotyper="26.02.2019"

# download strelka binary
RUN wget https://github.com/Illumina/strelka/releases/download/v2.9.10/strelka-2.9.10.centos6_x86_64.tar.bz2
RUN tar xvjf strelka-2.9.10.centos6_x86_64.tar.bz2

# Check successful instlal
RUN bash strelka-2.9.10.centos6_x86_64/bin/runStrelkaSomaticWorkflowDemo.bash
RUN bash strelka-2.9.10.centos6_x86_64/bin/runStrelkaGermlineWorkflowDemo.bash

#gvcfgenotyper
RUN git clone https://github.com/Illumina/gvcfgenotyper.git && \
    cd gvcfgenotyper && make 

RUN mv strelka-2.9.10.centos6_x86_64 strelka2
ENV PATH "$PATH:/tools/strelka2/bin:/tools/gvcfgenotyper/bin:"

RUN rm strelka-2.9.10.centos6_x86_64.tar.bz2 && \
    rm -rf strelkaGermlineDemoAnalysis && \
    rm -rf strelkaSomaticDemoAnalysis
RUN apt-get autoclean -y

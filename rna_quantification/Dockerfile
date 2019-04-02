FROM combinelab/salmon:latest
MAINTAINER Rui Luis <ruisergioluis@gmail.com>

ENV SALMON_VERSION 0.13.1
ENV KALLISTO_VERSION 0.45.1

WORKDIR /tools
RUN apt-get update && apt-get install -y wget && wget https://github.com/pachterlab/kallisto/releases/download/v0.45.1/kallisto_linux-v0.45.1.tar.gz
RUN tar -xvzf kallisto_linux-v0.45.1.tar.gz && cd kallisto* && \
mv ./kallisto /usr/local/bin && cd ../ && rm -rf kallisto*

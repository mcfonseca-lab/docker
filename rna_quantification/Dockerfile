FROM combinelab/salmon:latest
MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

ENV SALMON_VERSION 1.1.0
ENV KALLISTO_VERSION 0.46.2

WORKDIR /tools
RUN apt-get update && apt-get install -y wget && wget https://github.com/pachterlab/kallisto/releases/download/v0.46.2/kallisto_linux-v0.46.2.tar.gz
RUN tar -xvzf kallisto_linux-v0.46.2.tar.gz && cd kallisto* && \
mv ./kallisto /usr/local/bin && cd ../ && rm -rf kallisto*

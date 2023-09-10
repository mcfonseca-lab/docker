FROM docker.io/condaforge/mambaforge:23.3.1-1

LABEL maintainer="Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>"

WORKDIR /tools

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y wget zlib1g-dev build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip git 

RUN git clone https://github.com/lh3/seqtk.git && cd seqtk && make && mv seqtk /usr/local/bin/ && cd .. && rm -rf seqtk

RUN wget https://github.com/shenwei356/seqkit/releases/download/v2.5.1/seqkit_linux_amd64.tar.gz && \
tar -xvzf seqkit_linux_amd64.tar.gz && mv seqkit /usr/local/bin && \
wget http://zlib.net/pigz/pigz-2.8.tar.gz && tar -xvzf pigz-2.8.tar.gz && cd pigz-2.8/ && make && mv pigz unpigz /usr/local/bin && \
cd .. && rm *tar.gz

CMD ["seqkit genautocomplete"]

LABEL seqtk="1.4-r130-dirty"
LABEL seqkit="2.5.1"
LABEL pigz="2.8"

RUN apt-get remove git wget -y
RUN apt-get autoclean -y

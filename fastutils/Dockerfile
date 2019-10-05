FROM ubuntu:16.04 

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt> 

WORKDIR /tools

RUN apt-get update && \
    apt-get install -y wget zlib1g-dev build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip git 

#seqtk v1.3(r106)
RUN git clone https://github.com/lh3/seqtk.git && cd seqtk && make && mv seqtk /usr/local/bin/ && cd .. && rm -rf seqtk
LABEL seqtk-version=1.3(r106)

#seqkit 0.11.0
RUN wget https://github.com/shenwei356/seqkit/releases/download/v0.11.0/seqkit_linux_amd64.tar.gz && \
tar -xvzf seqkit_linux_amd64.tar.gz && mv seqkit /usr/local/bin && \
wget http://zlib.net/pigz/pigz-2.4.tar.gz && tar -xvzf pigz-2.4.tar.gz && cd pigz-2.4/ && make && mv pigz unpigz /usr/local/bin && \
cd .. && rm *tar.gz

CMD ["seqkit genautocomplete"]
LABEL seqkit-version=0.11.0
LABEL pigz-version=2.3.4

RUN apt-get remove git wget -y
RUN apt-get autoclean -y

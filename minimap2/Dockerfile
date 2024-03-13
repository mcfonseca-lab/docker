FROM docker.io/condaforge/mambaforge:23.3.1-1

LABEL maintainer="Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>"

ENV MINIMAP2 VERSION 2.27(r1193)

RUN apt-get install -y wget

WORKDIR /opt
RUN wget https://github.com/lh3/minimap2/releases/download/v2.27/minimap2-2.27_x64-linux.tar.bz2
RUN tar -xvf minimap2-2.27_x64-linux.tar.bz2 && mv minimap2-2.27_x64-linux minimap2-2.27 && rm minimap2-2.27_x64-linux.tar.bz2
ENV PATH="${PATH}:/opt/minimap2-2.27"

FROM rocker/rstudio:latest

MAINTAINER Rosina Savisaar <rsavisaar@medicina.ulisboa.pt>

RUN apt-get update && apt-get install -y g++ make libxml2-dev libcurl4-openssl-dev libssl-dev libv8-dev

WORKDIR /usr/bin
RUN git clone https://github.com/rosinaSav/brms_installation.git
WORKDIR brms_installation
RUN Rscript install_brms.r

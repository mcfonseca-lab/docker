FROM ubuntu:16.04

MAINTAINER Rui Luis <ruisergioluis@gmail.com>

RUN apt-get update && apt-get install -y python-pip libz-dev

RUN pip install pysam pybedtools

RUN python -m pip install --user numpy scipy pandas

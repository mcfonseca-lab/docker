FROM mcfonsecalab/python37_bio

MAINTAINER Rui Luis <ruisergioluis@gmail.com>

#Deeptools
ARG PACKAGE_VERSION=3.4.3
RUN wget https://github.com/deeptools/deepTools/archive/${PACKAGE_VERSION}.tar.gz && tar -xvzf ${PACKAGE_VERSION}.tar.gz && \
    cd deepTools-${PACKAGE_VERSION} && python setup.py install

RUN apt-get autoclean -y
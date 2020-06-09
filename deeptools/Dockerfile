FROM mcfonsecalab/python37_bio:0.10

MAINTAINER Rui Luis <ruisergioluis@gmail.com>

#Adding necessary side packages
RUN conda install -y -c bioconda deeptoolsintervals==0.1.9 plotly==4.8.1

#Deeptools
ARG PACKAGE_VERSION=3.4.3
RUN wget https://github.com/deeptools/deepTools/archive/${PACKAGE_VERSION}.tar.gz && tar -xvzf ${PACKAGE_VERSION}.tar.gz && \
    cd deepTools-${PACKAGE_VERSION} && python setup.py install

RUN apt-get autoclean -y
FROM centos:7.6.1810

RUN yum -y update

RUN yum install -y gcc gcc-c++ openssl-devel bzip2-devel libffi-devel zlib-devel wget make bzip2 xz-devel libcurl-devel git

WORKDIR /opt
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.12.0-Linux-x86_64.sh && bash Miniconda3-py38_4.12.0-Linux-x86_64.sh -b -p miniconda3

ENV PATH="$PATH:/opt/miniconda3/bin/"
RUN conda update -n base conda

#Add Bioconda Channels
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda

WORKDIR /usr/bin 
RUN rm -f python* && ln -s /opt/miniconda3/bin/python .

WORKDIR /opt
RUN wget https://github.com/samtools/htslib/releases/download/1.16/htslib-1.16.tar.bz2
RUN tar -vxjf htslib-1.16.tar.bz2
 
WORKDIR htslib-1.16
RUN ./configure --prefix=/usr/local/htslib && make && make install

ENV HTSLIB_LIBRARY_DIR=/usr/local/htslib/lib
ENV HTSLIB_INCLUDE_DIR=/usr/local/htslib/include

WORKDIR /opt
RUN rm -rf Miniconda* htslib*
RUN pip install git+https://bitbucket.org/biociphers/majiq_academic.git

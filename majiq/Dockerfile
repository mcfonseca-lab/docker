FROM centos:7.6.1810

RUN yum -y update

RUN yum install -y gcc gcc-c++ openssl-devel bzip2-devel libffi-devel zlib-devel wget make bzip2 xz-devel libcurl-devel git

WORKDIR /opt
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py310_23.11.0-2-Linux-x86_64.sh && bash Miniconda3-py310_23.11.0-2-Linux-x86_64.sh -b -p miniconda3

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
RUN git clone https://PedroBarbosa3@bitbucket.org/biociphers/moccasin.git && cd moccasin && pip install pandas

COPY majiq_license_academic_official.lic /opt/majiq_license_academic_official.lic
ENV MAJIQ_LICENSE_FILE=/opt/majiq_license_academic_official.lic

LABEL majiq="2.5.1.dev1+g62d35d4"
LABEL moccasin="0.24"

############################################################
# Dockerfile to build container images for RNA-seq pipeline 
# including hisat2, stringtie, gffcompare and samtools
# Based on Ubuntu 
############################################################ 

FROM ubuntu:16.04 
# File Author / Maintainer 

MAINTAINER Rui Luis <ruisergioluis@gmail.com> # install dependencies first 

RUN apt-get update && apt-get install -y \ 
	build-essential \ 
	gcc-multilib \ 
	zlib1g-dev \ 
	curl \ 
	wget \ 
	cmake \ 
	python \ 
	python-pip \ 
	python-dev \ 
	python2.7-dev \ 
	python-numpy \ 
	python-matplotlib \ 
	hdf5-tools \ 
	libhdf5-dev \ 
	hdf5-helpers \ 
	libhdf5-serial-dev \ 
	libssh2-1-dev \ 
	libcurl4-openssl-dev \ 
	icu-devtools \ 
	libssl-dev \ 
	libxml2-dev \ 
	r-bioc-biobase \ 
	git \ 
	apt-utils \ 
	pigz 




# Install hisat2
WORKDIR /docker
RUN wget ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/downloads/hisat2-2.1.0-Linux_x86_64.zip && \
    unzip hisat2-2.1.0-Linux_x86_64.zip
RUN cp -p hisat2-2.1.0/hisat2 hisat2-2.1.0/hisat2-* /usr/bin


# Install samtools
WORKDIR /docker
RUN wget https://github.com/samtools/samtools/releases/download/1.6/samtools-1.6.tar.bz2 && \
    tar -jxf samtools-1.6.tar.bz2 && \
    cd samtools-1.6 && \
    make && \
    make install && \
    cp samtools /usr/bin/

# Install stringtie
WORKDIR /docker
RUN wget http://ccb.jhu.edu/software/stringtie/dl/stringtie-1.3.3b.Linux_x86_64.tar.gz && \
    tar zxf stringtie-1.3.3b.Linux_x86_64.tar.gz && \
    cp ./stringtie-1.3.3b.Linux_x86_64/stringtie /usr/bin/


# Install gffcompare
WORKDIR /docker
RUN wget http://ccb.jhu.edu/software/stringtie/dl/gffcompare-0.10.1.Linux_x86_64.tar.gz && \
        tar zxf gffcompare-0.10.1.Linux_x86_64.tar.gz && \
        cp ./gffcompare-0.10.1.Linux_x86_64/gffcompare /usr/bin/



# Cleanup
RUN rm -rf /docker/hisat2-2.1.0
RUN rm -rf /docker/samtools-1.4
RUN rm -rf /docker/stringtie-1.3.3b.Linux_x86_64
RUN rm -rf /docker/gffread-0.9.9.Linux_x86_64
RUN apt-get clean
RUN apt-get remove --yes --purge build-essential gcc-multilib apt-utils zlib1g-dev vim

# Set default working path
WORKDIR /docker

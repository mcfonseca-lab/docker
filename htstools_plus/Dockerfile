FROM argrosso/htstools:0.1.2

MAINTAINER Rui Luis <ruisergioluis@gmail.com>


RUN apt-get update && apt-get install -y build-essential cmake git zlib1g-dev liblzo2-dev python3-pip


#bamtools v2.4.2
RUN git clone git://github.com/pezmaster31/bamtools.git && \
    cd bamtools && mkdir build && cd build && cmake -DCMAKE_INSTALL_PREFIX=. .. && \
    make && make install && cp bin/bamtools /usr/local/bin && cd ../../ && rm -rf bamtools 

#faToTwoBit
RUN wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/faToTwoBit && \
    chmod +x faToTwoBit && mv faToTwoBit /usr/local/bin

#RSeQC
ARG PACKAGE_VERSION=3.0.1
RUN pip3 install Cython
RUN pip3 install RSeQC==${PACKAGE_VERSION}

#Deeptools
ARG PACKAGE_VERSION=3.4.3
RUN wget https://github.com/deeptools/deepTools/archive/${PACKAGE_VERSION}.tar.gz && tar -xvzf ${PACKAGE_VERSION}.tar.gz && \
    cd deepTools-${PACKAGE_VERSION} && python setup.py install

#Bedtools2 Update 
RUN rm -r bedtools2 && \
    git clone https://github.com/arq5x/bedtools2.git && \
    cd bedtools2 && \
    make && \
    make install 

#Samtools Update
ARG PACKAGE_VERSION=1.10
RUN wget https://github.com/samtools/samtools/releases/download/${PACKAGE_VERSION}/samtools-${PACKAGE_VERSION}.tar.bz2 && \
    tar -xjf  samtools-${PACKAGE_VERSION}.tar.bz2  && \
    cd samtools-${PACKAGE_VERSION} && \
    ./configure --prefix=/usr/local/bin && \
    make && \
    make install
 
#Multiqc
ARG PACKAGE_VERSION=1.9
RUN pip3 install multiqc==${PACKAGE_VERSION}

#featureCounts Installation
ARG PACKAGE_VERSION=1.6.1
RUN wget -q https://downloads.sourceforge.net/project/subread/subread-${PACKAGE_VERSION}/subread-${PACKAGE_VERSION}-source.tar.gz && \
    tar -xzf subread-${PACKAGE_VERSION}-source.tar.gz && \
    cd subread-${PACKAGE_VERSION}-source/src && \
    make -f Makefile.Linux && \
    cd ../bin && \
    mv utilities/* . && \
    rmdir utilities && \
    mv * /usr/local/bin/

#FastQC
RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip && unzip fastqc_v0.11.9.zip && \
    cd FastQC && chmod +x fastqc && mv * /usr/local/bin/

#TrimGalore Installation
ARG PACKAGE_VERSION=0.6.5
RUN pip3 install cutadapt==2.10
RUN apt-get install -y openjdk-8-jre perl python3 unzip
RUN curl -fsSL https://github.com/FelixKrueger/TrimGalore/archive/${PACKAGE_VERSION}.tar.gz -o trim_galore.tar.gz && tar xvzf trim_galore.tar.gz && \
    cd TrimGalore-${PACKAGE_VERSION} && chmod +x trim_galore && cp trim_galore /usr/local/bin/

RUN apt-get remove git cmake -y
RUN apt-get autoclean -y

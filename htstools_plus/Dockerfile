FROM argrosso/htstools:latest

MAINTAINER Rui Luis <ruisergioluis@gmail.com>

RUN apt-get update && apt-get install -y cmake git

#rseqc v2.6.4
RUN wget http://downloads.sourceforge.net/project/rseqc/RSeQC-2.6.4.tar.gz && \
    tar -zxf RSeQC-2.6.4.tar.gz && \
    cd RSeQC-2.6.4 && \
    python ./setup.py build && \
    python ./setup.py install

#bamtools v2.4.2
RUN git clone git://github.com/pezmaster31/bamtools.git && \
    cd bamtools && mkdir build && cd build && cmake -DCMAKE_INSTALL_PREFIX=. .. && \
    make && make install && cp bin/bamtools /usr/local/bin && cd ../../ && rm -rf bamtools 

#faToTwoBit
RUN wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/faToTwoBit && \
    chmod +x faToTwoBit && mv faToTwoBit /usr/local/bin

RUN apt-get remove git cmake -y
RUN apt-get autoclean -y

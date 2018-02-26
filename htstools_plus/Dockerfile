FROM argrosso/htstools:latest

MAINTAINER Rui Luis <ruisergioluis@gmail.com>

RUN apt-get update && apt-get install -y cmake git zlib1g-dev liblzo2-dev


#bamtools v2.4.2
RUN git clone git://github.com/pezmaster31/bamtools.git && \
    cd bamtools && mkdir build && cd build && cmake -DCMAKE_INSTALL_PREFIX=. .. && \
    make && make install && cp bin/bamtools /usr/local/bin && cd ../../ && rm -rf bamtools 

#faToTwoBit
RUN wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/faToTwoBit && \
    chmod +x faToTwoBit && mv faToTwoBit /usr/local/bin

#rseqc v2.6.4
RUN pip install RSeQC

#Deeptools
RUN pip install deeptools

#Bedtools2 Update 
RUN rm -r bedtools2 && \
    git clone https://github.com/arq5x/bedtools2.git && \
    cd bedtools2 && \
    make && \
    make install 

RUN apt-get remove git cmake -y
RUN apt-get autoclean -y

FROM mcfonsecalab/python36_bio:latest

WORKDIR /tools

RUN conda install kallisto

RUN conda install bowtie

RUN git clone https://github.com/eturro/mmseq.git && cd mmseq/bin && for f in $(ls *-linux); do mv $f $(basename $f -linux);done
ENV PATH="$PATH:/tools/mmseq/bin/"



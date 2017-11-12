# image: COMBINE-lab/salmon
# This dockerfile is based on the one created by


FROM FROM biocontainers/biocontainers:latest

MAINTAINER Rui Luis <ruisergioluis@gmail.com>

ENV SALMON_VERSION 0.8.2

RUN conda install salmon=${SALMON_VERSION}

WORKDIR /data/

CMD ["salmon"]


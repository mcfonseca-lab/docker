FROM mcfonsecalab/python37_bio:latest 

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

COPY --from=zavolab/whippet:0.11 /root/.julia/ /root/.julia
ENV PATH="/root/.julia/v0.6/Whippet/bin:${PATH}"

WORKDIR /tools
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/0.6/julia-0.6.4-linux-x86_64.tar.gz \
&& tar -xvzf julia-0.6.4-linux-x86_64.tar.gz && mv julia-9d11f62bcb julia_v0.6.4 && rm julia-0.6.4-linux-x86_64.tar.gz

ENV julia="/tools/julia_v0.6.4/bin/julia"
RUN ln -s ${julia} /usr/local/bin

RUN conda update --all
RUN conda install -c bioconda suppa irfinder star bedtools

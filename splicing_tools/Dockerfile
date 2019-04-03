FROM mcfonsecalab/python37_bio:latest

WORKDIR /tools
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/0.6/julia-0.6.4-linux-x86_64.tar.gz \
&& tar -xvzf julia-0.6.4-linux-x86_64.tar.gz && mv julia-9d11f62bcb julia_v0.6.4

ENV julia="/tools/julia_v0.6.4/bin/julia"
ENV PATH="${julia}:${PATH}"
RUN ${julia} -e 'Pkg.add("Whippet")'
ENV PATH="~/.julia/v0.6/Whippet/bin:${PATH}"

RUN conda install -y -c bioconda suppa



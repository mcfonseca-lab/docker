FROM mcfonsecalab/python37_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

WORKDIR /python_env
RUN pip install -U gtfparse scikit-learn imbalanced-learn yellowbrick sklearn-pandas==1.5.0 tensorflow==2.0.0
RUN conda install -c anaconda keras-gpu tensorflow-gpu
RUN conda install -c anaconda keras tensorflow
RUN conda install -c bioconda selene-sdk

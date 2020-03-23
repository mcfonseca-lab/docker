FROM mcfonsecalab/python37_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

WORKDIR /python_env
RUN apt-get install -y libgeos-dev
RUN pip install -U gtfparse scikit-learn imbalanced-learn yellowbrick sklearn-pandas kipoiseq deeplift 
RUN pip install -U tensorflow tensorflow-gpu Keras
#Installing keras and tensorflow through conda leads to a change in the ca certificate verion and openssl package. This crashes juptyer lab sessions where extensions are no longer accessible. Installing through pip solves the issue.
#RUN conda install -c anaconda keras-gpu tensorflow-gpu
#RUN conda install -c anaconda keras tensorflow
#Skipping installation of selene because if forces the downgrade of some packages.
RUN conda install -c bioconda selene-sdk

FROM mcfonsecalab/jupyterlab:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

WORKDIR /python_env
RUN apt-get install -y libgeos-dev
#General ML
RUN pip install -U gtfparse scikit-learn imbalanced-learn yellowbrick sklearn-pandas pycm==2.6

#Genetic programming
RUN pip install deap gplearn

#Deep leearning 
RUN pip install -U tensorflow tensorflow-gpu tensorflow-addons Keras
#Installing keras and tensorflow through conda leads to a change in the ca certificate verion and openssl package. This crashes juptyer lab sessions where extensions are no longer accessible. Installing through pip solves the issue.
#RUN conda install -c anaconda keras-gpu tensorflow-gpu
#RUN conda install -c anaconda keras tensorflow

#Genomics-related
RUN conda install -c bioconda pybedtools cyvcf2
RUN pip install kipoiseq kipoi_interpret kipoi_veff deeplift
#Skipping installation of selene because if forces the downgrade of some packages.
#RUN conda install -c bioconda selene-sdk

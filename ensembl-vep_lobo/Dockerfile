#########################################
# Ensembl-VEP
#########################################

FROM ensemblorg/ensembl-vep:latest
MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>
LABEL Description="This image is used to run ENSEMBL-VEP within lobo through shifter."

#Set folder and files variables
#SOFTWARE_FOLDER=/software   
#VEP_FOLDER=/software/vep/src/ensembl-vep/  
ENV CACHE_FOLDER=/home/vep/.vep

#Create .vep folder
RUN mkdir /home/vep/.vep

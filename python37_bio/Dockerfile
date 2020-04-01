FROM ubuntu:18.04

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

WORKDIR /python_env
RUN apt-get update && apt-get install -y bzip2 wget libgl1-mesa-glx git && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh  && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p miniconda3

ENV PATH="$PATH:/python_env/miniconda3/bin/"
ENV LD_LIBRARY_PATH="/python_env/miniconda3/lib/"
#Update conda
#RUN conda update -n base conda

#Add Bioconda Channels
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda
 
RUN conda install -y -c bioconda pandas seaborn scipy numpy
RUN conda install -y biopython && conda update biopython
RUN conda install -y -c conda-forge jupyterlab jupytext nodejs nb_conda_kernels

#check for markdown spelling mistakes
RUN jupyter labextension install @ijmbarr/jupyterlab_spellchecker
#table of contents extension
RUN jupyter labextension install @jupyterlab/toc
#go to definition extension
RUN jupyter labextension install @krassowski/jupyterlab_go_to_definition
#to navigate code, hover suggestions and autocompletion
RUN pip install --pre jupyter-lsp
RUN jupyter labextension install @krassowski/jupyterlab-lsp
RUN conda install -c conda-forge python-language-server r-languageserver
#interactive plots
RUN conda install -c bokeh jupyter_bokeh
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install @bokeh/jupyter_bokeh
#to be able to use progress bars
RUN conda install -y -c conda-forge ipywidgets 
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension

#show memory usage and system resources
#RUN conda install -c anaconda psutil
RUN apt-get install -y gcc python3-dev
RUN pip install nbresuse psutil
RUN jupyter labextension install jupyterlab-topbar-extension jupyterlab-system-monitor

#open spreadsheets like excel
#RUN jupyter labextension install jupyterlab-spreadsheet #fails with the latest jupyterlab version (v2)
#jupytext
RUN jupyter nbextension install --py jupytext
RUN jupyter nbextension enable --py jupytext
RUN jupyter lab build

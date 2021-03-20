FROM mcfonsecalab/python37_bio:latest

MAINTAINER Pedro Barbosa <pedro.barbosa@medicina.ulisboa.pt>

ENV LD_LIBRARY_PATH="/python_env/miniconda3/lib/"
ENV DEBIAN_FRONTEND=noninteractive 

#nodejs
RUN apt install -y curl dirmngr apt-transport-https lsb-release ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

RUN conda install -y -c conda-forge jupyterlab jupytext nb_conda_kernels

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
#git version control embeeded in Jupiter Notebook
RUN jupyter labextension install @jupyterlab/git



#Interactive plots
#Interactive features of matplotlib in the Jupyter notebook and in JupyterLab
RUN conda install -c conda-forge ipympl
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager jupyter-matplotlib
#Bokeh
RUN conda install -c bokeh jupyter_bokeh
RUN pip install bokeh_catplot
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install @bokeh/jupyter_bokeh
#Dash
RUN pip install jupyter-plotly-dash

#to be able to use progress bars
RUN conda install -y -c conda-forge ipywidgets 
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension

#show memory usage and system resources
#RUN conda install -c anaconda psutil
RUN apt-get update
RUN apt-get install -y gcc python3-dev
RUN pip install nbresuse psutil
RUN jupyter labextension install jupyterlab-topbar-extension jupyterlab-system-monitor

#open spreadsheets like excel
#RUN jupyter labextension install jupyterlab-spreadsheet #fails with the latest jupyterlab version (v2)
#jupytext
RUN apt-get install -y texlive-xetex
RUN jupyter nbextension install --py jupytext
RUN jupyter nbextension enable --py jupytext
RUN jupyter labextension install jupyterlab-jupytext

#Jupyterlab debugger
RUN conda install -c conda-forge xeus-python=0.6.12 ptvsd
RUN jupyter labextension install @jupyterlab/debugger

#Variable inspector
RUN jupyter labextension install @lckr/jupyterlab_variableinspector

RUN jupyter lab build

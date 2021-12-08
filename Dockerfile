FROM jupyter/base-notebook:python-3.8.5

# Install base packages
USER root
RUN apt-get update -y
RUN apt-get install -y build-essential sudo git
RUN apt-get install -y yes

# Installs Anaconda
RUN conda update -n base conda

# INstall widgets and web-gis libraries
RUN pip install numpy pandas plotly 
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyterlab-plotly

# Install Git extensions
RUN jupyter labextension install @jupyterlab/github
RUN jupyter labextension install nbdime-jupyterlab

RUN jupyter lab build --minimize=True

# Install QisKit
RUN pip install qiskit==0.33
RUN pip install qiskit[visualization]==0.33

# Install notebooks
USER jovyan
RUN git clone https://github.com/quantum-melb/MCDS-workshop







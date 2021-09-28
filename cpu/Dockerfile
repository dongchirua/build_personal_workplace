FROM continuumio/miniconda3

WORKDIR /workspace/

RUN apt-get update && apt-get -y install build-essential htop graphviz curl tmux
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs

ADD ./env.yml /workspace/conda_environment.yml

RUN conda env create -f /workspace/conda_environment.yml && \
    conda clean --all --yes

# RUN jupyter labextension install jupyterlab_tensorboard

RUN echo "conda activate workspace" >> ~/.bashrc
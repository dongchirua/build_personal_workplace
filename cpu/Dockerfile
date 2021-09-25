FROM continuumio/miniconda3

WORKDIR /workspace/

RUN apt-get update && apt-get -y install build-essential htop graphviz-dev

ADD ./conda_environment.yml /workspace/conda_environment.yml

RUN conda env create -f /workspace/conda_environment.yml && \
    conda clean --all --yes

RUN echo "conda activate workspace" >> ~/.bashrc
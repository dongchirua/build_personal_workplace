ARG FROM_IMAGE_NAME=nvcr.io/nvidia/pytorch:21.03-py3
FROM ${FROM_IMAGE_NAME}

ADD requirements.txt /workspace
WORKDIR /workspace/
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get install -y git htop

ENV LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libtcmalloc_minimal.so.4
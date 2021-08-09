#!/bin/bash
docker run --gpus all --shm-size=110g --ulimit memlock=-1 --ulimit stack=67108864 -p 8888:8888 -p 6006:6006 -it --rm --ipc=host -v $PWD:/workspace --name br_gpu br_custom_v1 bash

#!/bin/bash
nvidia-docker run --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 -p 8891:8888 -p 6008:6006 -it --rm --ipc=host -v $PWD:/workspace --name br_gpu br_custom_v1 bash

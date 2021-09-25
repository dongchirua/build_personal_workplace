#!/bin/bash
docker run --shm-size=100g --ulimit memlock=-1 --ulimit stack=67108864 -p 8888:8888 -p 6006:6006 -it -d --rm --ipc=host \
 -v $PWD:/workspace --name br_workspace workspace:cpu jupyter lab

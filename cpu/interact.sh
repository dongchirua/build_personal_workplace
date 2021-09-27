#!/bin/bash
docker run --shm-size=100g --ulimit memlock=-1 --ulimit stack=67108864 -p 8888:8888 -it -d --rm --ipc=host \
 -v $PWD:/workspace --name workspace_cpu workspace:cpu bash
 #jupyter lab --ip=0.0.0.0 --port=8888 --allow-root

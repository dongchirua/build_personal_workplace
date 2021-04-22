#!/bin/bash
docker pull nvcr.io/nvidia/pytorch:21.03-py3
docker build . --rm -t br_custom_v1
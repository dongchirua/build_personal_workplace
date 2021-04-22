#!/bin/bash
for i in `docker images | grep '<none>' | awk -F' +' '{ print $3}' ` ; do docker rmi -f $i; done
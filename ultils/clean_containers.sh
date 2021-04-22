#!/bin/bash
for i in `docker ps -a| grep 'Exited' | awk -F' +' '{ print $1}' ` ; do docker rm -f $i ; done
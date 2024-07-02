#!/bin/bash

#set working directory
ROOT="$(dirname ${BASH_SOURCE[0]})"
#set log output directory, locates in directory: ior/test_logs/${TYPE}
TYPE="mdtest"

#initialize the environment variables
IOR_TMP=/mnt/ckpt
source $ROOT/test-lib.sh


#test command
MDTEST 8 -i 1 -n 6400 -p 15 -u -w 1024
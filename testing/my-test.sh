#!/bin/bash

#set working directory
ROOT="$(dirname ${BASH_SOURCE[0]})"
#set log output directory, locates in directory: ior/test_logs/${TYPE}
IOR_OUT=./test_logs/mdtest

#initialize the environment variables
IOR_TMP=/mnt/ckpt
#log level
LOG_VERBOSE=1
source $ROOT/test-lib.sh


#test command
MDTEST 1 -C -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 2 -C -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 4 -C -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 8 -C -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 16 -C -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 32 -C -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 64 -C -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 128 -C -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 256 -C -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 512 -C -i 3 -n 2000 -p 5 -u -w 4096
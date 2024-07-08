#!/bin/bash

#set working directory
ROOT="$(dirname ${BASH_SOURCE[0]})"
#set log output directory
IOR_OUT=./test_logs/mdtest

#set test directory
IOR_TMP=/mnt/ckpt
#log level
LOG_VERBOSE=1
#use test-lib function
source $ROOT/test-lib.sh


#pressure test command 
MDTEST 1 -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 2 -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 4 -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 8 -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 16 -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 32 -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 64 -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 128 -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 256 -i 3 -n 2000 -p 5 -u -w 4096
MDTEST 512 -i 3 -n 2000 -p 5 -u -w 4096

#truncate test command
MDTEST 32 -i 3 -n 2000 -p 5 -u -w 4096 -q 2048
MDTEST 64 -i 3 -n 2000 -p 5 -u -w 4096 -q 2048
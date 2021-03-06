#!/bin/bash

URL="http://data.gmum.net/gmum_r/cec/big_tests"
DATA_DIR="../../../inst/dev/datasets/cec"
DIRS=`cat test_data_dirs_list`
FILES=`cat test_data_list`

# mkdir if not exist
for d in $DIRS
do
    mkdir -p $DATA_DIR/$d
done

# Download data
for f in $FILES
do
    wget $URL/$f -O $DATA_DIR/$f
done

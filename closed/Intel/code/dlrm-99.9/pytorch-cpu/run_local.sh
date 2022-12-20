#!/bin/bash

# comment out for running automation script on AWS
# source ./run_common.sh
source /workspace/run_common.sh

common_opt="--config ./mlperf.conf"
# comment out for running automation script on AWS
# OUTPUT_DIR=$PWD/output/$name/$mode/$test_type
OUTPUT_DIR=/workspace/output/$name/$mode/$test_type
if [[ $test_type == "performance" ]]; then
    OUTPUT_DIR=$OUTPUT_DIR/run_1
fi
if [ ! -d $OUTPUT_DIR ]; then
    mkdir -p $OUTPUT_DIR
fi

set -x # echo the next command

profiling=0
if [ $profiling == 1 ]; then
    EXTRA_OPS="$EXTRA_OPS --enable-profiling=True"
fi

## multi-instance
python -u python/runner.py --profile $profile $common_opt --model $model --model-path $model_path \
                           --dataset $dataset --dataset-path $DATA_DIR --output $OUTPUT_DIR $EXTRA_OPS $@

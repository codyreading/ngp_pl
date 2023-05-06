#!/bin/bash

export ROOT_DIR=/home/creading/Datasets/nerf_llff_data
export DOWNSAMPLE=0.25 # to avoid OOM
export SCALE=2.0

python train.py \
    --root_dir $ROOT_DIR/fern \
    --exp_name fern --downsample $DOWNSAMPLE --no_save_test \
    --num_epochs 30 --batch_size 8192 --eval_lpips


#!/bin/bash

export ROOT_DIR=/home/creading/Datasets/nerf_llff_data
export DOWNSAMPLE=0.25 # to avoid OOM
export SCALE=2.0
export DATASET_NAME=colmap

# python train.py \
#     --root_dir $ROOT_DIR/fern \
#     --exp_name fern --downsample $DOWNSAMPLE --no_save_test --scale $SCALE \
#     --dataset_name $DATASET_NAME --num_epochs 30 --batch_size 4096 --eval_lpips


python train.py \
    --root_dir $ROOT_DIR/fern \
    --exp_name fern --downsample $DOWNSAMPLE --val_only --scale $SCALE \
    --ckpt_path ckpts/$DATASET_NAME/fern/epoch=29.ckpt \
    --dataset_name $DATASET_NAME --num_epochs 30 --batch_size 4096 --eval_lpips
#!/bin/bash

export ROOT_DIR=/home/creading/Datasets/nerf_llff_data # SET TO YOUR OWN DATADIR
export DOWNSAMPLE=0.25 # to avoid OOM
export SCALE=2.0
export DATASET_NAME=colmap

SCENES=("fern" "flower" "fortress" "horns" "leaves" "orchids" "room" "trex")


for scene in ${SCENES[@]}
do
    python train.py \
    --root_dir $ROOT_DIR/$scene \
    --exp_name $scene --downsample $DOWNSAMPLE --val_only --scale $SCALE \
    --ckpt_path ckpts/$DATASET_NAME/$scene/epoch=29.ckpt \
    --dataset_name $DATASET_NAME --num_epochs 30 --batch_size 4096 --eval_lpips
done


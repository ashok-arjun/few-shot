#!/bin/bash

set -x
set -e

python main.py --config configs/miniImagenet.yml \
    --supp 1-shot_resnet12 \
    val.n_support 1 \
    method.metric_params.margin -0.02 \
    train.adam_params.weight_decay 1e-4 \
    train.drop_rate 0.1 \
    train.dropblock_size 5 \
    method.backbone resnet12 \
    method.image_size 84 \

#!/bin/bash

set -x
set -e

python main.py --config configs/miniImagenet.yml \
    --supp protonet-5-shot \
    method.metric ProtoNet \
    train.optim SGD \
    train.stop_epoch 400
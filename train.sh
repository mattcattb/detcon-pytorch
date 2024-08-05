#!/bin/bash

CONFIG_FILENAME="custom_strawberry_train.yaml"
master_addr="localhost"


python -m torch.distributed.launch \
    --nproc_per_node=1 --nnodes=1 \
    --node_rank=0 \
    --master_addr="$master_addr" \
    --master_port=12345 \
    detconb_main.py \
    --cfg="$CONFIG_FILENAME"

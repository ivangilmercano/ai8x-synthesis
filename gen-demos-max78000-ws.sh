#!/bin/sh
DEVICE="MAX78000"
TARGET="C:\MaximSDK\Examples\MAX78000\CNN"
COMMON_ARGS="--device $DEVICE --timer 0 --display-checkpoint --verbose"

#gen for cats vs dogs
#python ai8xize.py --test-dir $TARGET --prefix cats-dogs-iggm --checkpoint-file ../ai8x-training/logs/2023.03.24-201120_cats_vs_dogs/qat_best-q.pth.tar --config-file networks/cats-dogs-hwc.yaml --sample-input ../ai8x-training/logs/2023.03.24-201120_cats_vs_dogs/sample_cats_vs_dogs.npy --fifo --softmax $COMMON_ARGS "$@"

#gen for key word spotting
python ai8xize.py --test-dir $TARGET --prefix kws-iggm --checkpoint-file ../ai8x-training/logs/2023.04.06-172201_kws/qat_best-q.pth.tar --config-file networks/kws20-v3-hwc.yaml --sample-input ../ai8x-training/logs/2023.04.06-172201_kws/sample_kws_20.npy --softmax $COMMON_ARGS "$@"

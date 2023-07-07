#!/bin/sh
#Genereted Log folder during the Training
LOG_DIRECTORY="../ai8x-training/logs/logs_kws-mlp-v4"

# Quantization for cats and dogs
python quantize.py $LOG_DIRECTORY/best.pth.tar $LOG_DIRECTORY/best-quantized.pth.tar --device MAX78000 -v "$@"

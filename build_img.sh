#!/bin/bash

#!!! Предупреждение
# Образ собирается минимум час - полтора

# Настраиваем переменные
IMAGE_NAME="mmseg"
TAG="latest"


PYTORCH_VERSION="1.11.0"
CUDA_VERSION="11.3"
CUDNN_VERSION="8"
MMCV_VERSION="2.0.1"
MMSEG_VERSION="1.2.2"


docker build \
  --build-arg PYTORCH=${PYTORCH_VERSION} \
  --build-arg CUDA=${CUDA_VERSION} \
  --build-arg CUDNN=${CUDNN_VERSION} \
  --build-arg MMCV=${MMCV_VERSION} \
  --build-arg MMSEG=${MMSEG_VERSION} \
  -t ${IMAGE_NAME}:${TAG} \
  .

echo "Образ ${IMAGE_NAME}:${TAG} собран успешно!"
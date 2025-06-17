#!/bin/bash

# Параметры
IMAGE_NAME="mmseg"
TAG="latest"
CONTAINER_NAME="mmseg_container"
VOLUME_NAME="mmseg_data"


HOST_WORKDIR=$(pwd)

CONTAINER_WORKDIR="/mmsegmentation"

# Запуск контейнера
docker run -it --gpus all \
  --name ${CONTAINER_NAME} \
  -v ${VOLUME_NAME}:/mmsegmentation \
  -v $(pwd)/checkpoints:/mmsegmentation/checkpoints \
  -v $(pwd)/custom_config:/mmsegmentation/custom_config \
  ${IMAGE_NAME}:${TAG}

  /bin/bash

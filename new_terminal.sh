#!/bin/bash

# Название контейнера, в который нужно войти
CONTAINER_NAME="mmseg_container"

# Проверяем, запущен ли контейнер
if [ "$(docker ps -q -f name=^/${CONTAINER_NAME}$)" ]; then
    echo "Подключение к контейнеру ${CONTAINER_NAME}..."
    docker exec -it ${CONTAINER_NAME} /bin/bash
else
    echo "Контейнер ${CONTAINER_NAME} не запущен."
    echo "Сначала запусти его с помощью ./run_docker.sh"
fi

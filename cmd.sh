#!/bin/bash

function start() {
    docker-compose up # -d
}

function stop() {
    docker-compose down
}

function build() {
    docker-compose up --build # -d
}

function clear() {
    docker-compose down --volumes --rmi all
}

if [ "$1" == "start" ]; then
    start
elif [ "$1" == "stop" ]; then
    stop
elif [ "$1" == "build" ]; then
    build
elif [ "$1" == "clear" ]; then
    clear
else
    echo "Usage: $0 {start|stop|build|clear}"
fi

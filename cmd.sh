#!/bin/bash

start() {
    if [ "$2" == "-d" ]; then
        printer "🚀 Starting the app"
        docker-compose up -d
        handler
    else
        printer "🚀 Starting the app"
        docker-compose up
        handler
    fi
}

stop() {
    printer "🛑 Stopping the app"
    docker-compose down
    handler
}

build() {
    if [ "$2" == "-d" ]; then
        printer "🔨 Building the app"
        docker-compose up --build -d
        handler
    else
        printer "🔨 Building the app"
        docker-compose up --build
        handler
    fi
}

clear() {
    printer "🧹 Clearing all"
    docker-compose down --volumes --rmi all
    handler
}

printer() {
    echo ""
    echo "$1"
    echo ""
}

handler() {
    if [ $? -eq 0 ]; then
        printer "✅ Process completed successfully."
    else
        printer "❌ An error occurred during the process."
        exit 1
    fi
}

case "$1" in
    start)
        start "$@"
        ;;
    stop)
        stop
        ;;
    build)
        build "$@"
        ;;
    clear)
        clear
        ;;
    *)
        echo "Usage: $0 {start|stop|build|clear}"
        ;;
esac

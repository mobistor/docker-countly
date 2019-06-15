#!/bin/bash

up() {
	docker-compose up -d
}

start()
{
  docker-compose start
}

stop()
{
  docker-compose stop
}

clean()
{
  docker-compose rm -f
}

case $1 in
  up)
    up
    ;;
  stop)
    stop
    ;;
  start)
    start
    ;;
  restart)
    stop
    start
    ;;
  clean)
    stop
    clean
    ;;
  status)
    docker-compose ps
  ;;
esac

#!/bin/bash

# rebuild and reload wsd 
docker-compose up --detach --build $1

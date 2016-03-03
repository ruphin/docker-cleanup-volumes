#!/usr/bin/env bash
BASEDIR=$(dirname $(readlink -f $0))
CONTAINER_NAME=$(basename $BASEDIR)

docker build -t hub.unionstationapp.com/$CONTAINER_NAME $BASEDIR
docker push hub.unionstationapp.com/$CONTAINER_NAME

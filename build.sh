#!/bin/sh

docker image rm marc0janssen/loadbalancer:latest
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --push -t marc0janssen/loadbalancer:latest -f ./Dockerfile .

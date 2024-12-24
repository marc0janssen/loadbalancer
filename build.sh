#!/bin/sh

docker image rm marc0janssen/nnzbgetloadbalancer:latest
docker buildx build --no-cache --platform linux/amd64,linux/arm64 --push -t marc0janssen/nzbgetloadbalancer:latest -f ./Dockerfile .

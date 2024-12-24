#!/bin/sh

docker-compose -f /home/admin/docker/nzbgetloadbalancer/scripts/docker-compose.yml -p "nzbgetloadbalancer" up -d --remove-orphans

#!/bin/sh

docker-compose -f /home/admin/docker/loadbalancer/scripts/docker-compose.yml -p "loadbalancer" up -d --remove-orphans

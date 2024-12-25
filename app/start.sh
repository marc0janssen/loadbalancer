#!/bin/bash

# Name: loadbalancer
# Coder: Marco Janssen (twitter @marc0janssen)
# date: 2024-12-24 23:31:00
# update: 2024-12-25 23:21:00

if [ -f /etc/nginx/nginx.conf ] ; then
	echo "nginx config exists."
else 
	cp /app/default /etc/nginx/nginx.conf
	chmod a+rw /etc/nginx/nginx.conf
fi

echo "${NOW} - *** Starting the nginx process"
nohup /usr/sbin/nginx -g "daemon off;"

# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?
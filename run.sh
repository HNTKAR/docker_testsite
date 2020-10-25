#!/usr/bin/bash
date >> /var/log/site.log
mkdir -p /var/log/nginx/
touch /var/log/nginx/error.log
/usr/sbin/nginx -t
/usr/sbin/nginx 

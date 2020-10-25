#!/usr/bin/bash
date >> /var/log/site.log
/usr/sbin/nginx -t
/usr/sbin/nginx

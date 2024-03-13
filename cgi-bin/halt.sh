#!/bin/sh

sudo date 2>&1 >> /var/www/halt_log

sudo /usr/sbin/shutdown -h now


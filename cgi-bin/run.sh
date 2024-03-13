#!/bin/sh

sudo date 2>&1 >> /var/www/run_log
whoami 2>&1 >> /var/www/run_log
sudo killall -9 fbi 2>&1 >> /var/www/run_log
sleep 1
sudo /usr/bin/fbi -d /dev/fb0 -T 5 --noverbose -u -t 8 -a /var/www/html/images/*.jpg  2>&1 >> /var/www/run_log

echo  2>&1 >>/var/www/run_log

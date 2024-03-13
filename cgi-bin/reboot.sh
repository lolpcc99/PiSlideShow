#!/bin/sh

sudo date 2>&1 >> /var/www/reboot_log
whoami 2>&1 >> /var/www/reboot_log
sudo date 2>&1 >> /var/www/reboot_log

sudo /usr/sbin/reboot -f now

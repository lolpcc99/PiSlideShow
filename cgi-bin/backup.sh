#!/bin/sh

sudo date 2>&1 >> /var/www/backup_log
whoami 2>&1 >> /var/www/backup_log

cp -av /var/www/html/images/* /var/www/html/backup

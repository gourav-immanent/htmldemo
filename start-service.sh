#!/bin/bash
if [ `pgrep apache2 -c` -le "0" ]; then
/etc/init.d/apache2 stop
pkill -u www-data  
/etc/init.d/apache2 start
 echo "restarting....."
SUBJECT="Apache auto restart"
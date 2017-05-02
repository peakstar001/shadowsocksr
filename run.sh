#!/bin/bash
cd `dirname $0`
python_ver=$(ls /usr/lib|grep "^python"|tail -1)
eval $(ps -ef | grep "[0-9] ${python_ver} server\\.py m" | awk '{print "kill "$2}')
ulimit -n 512000
nohup ${python_ver} server.py m>> /dev/null 2>&1 &


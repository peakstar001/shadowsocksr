#!/bin/bash
cd `dirname $0`
python_ver=$(ls /usr/lib|grep "^python"|tail -1)
eval $(ps -ef | grep "[0-9] ${python_ver} server\\.py a" | awk '{print "kill "$2}')
ulimit -n 512000
nohup ${python_ver} server.py a>> ssserver.log 2>&1 &



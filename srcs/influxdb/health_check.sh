#!/bin/sh

for i in $@
do
    service=$i
    is_running=`ps aux | grep -v grep| grep -v "$0" | grep -c $service`

    if [ $is_running == "0" ];
    then
        exit 1
    fi

done
    exit 0
#!/bin/bash

case $1 in
    init)
        echo "format namenode ..."
        hdfs namenode -format
    ;;
    start)
        echo "start hdfs ..."
        start-dfs.sh
        sleep 5
        echo "start yarn ... "
        start-yarn.sh
        echo "start job history server ..."
        mapred --daemon start historyserver
    ;;
    stop)
        echo "stop job history server ..."
        mapred --daemon stop historyserver
        echo "stop yarn ..."
        stop-yarn.sh
        echo "stop hdfs ..."
        stop-dfs.sh
    ;;
    *)
        echo "Usage hadoop.sh init | start | stop"
    ;;
esac

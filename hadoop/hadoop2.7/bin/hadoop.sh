#!/bin/bash

case $1 in
    init)
        echo "format namenode ..."
        hdfs namenode -format
    ;;
    start)
        echo "start namenode ..."
        hadoop-daemon.sh start namenode
        echo "start datanode ..."
        hadoop-daemon.sh start datanode
        sleep 5
        echo "start resourcemanager ... "
        yarn-daemon.sh start resourcemanager
        echo "start nodemanager ..."
        yarn-daemon.sh start nodemanager
        echo "start job history server ..."
        mr-jobhistory-daemon.sh start historyserver
    ;;
    stop)
        echo "stop job history server ..."
        mr-jobhistory-daemon.sh stop historyserver
        echo "stop nodemanager ..."
        yarn-daemon.sh stop nodemanager
        echo "stop resourcemanager ... "
        yarn-daemon.sh stop resourcemanager
        echo "stop datanode ..."
        hadoop-daemon.sh stop datanode
        echo "stop namenode ..."
        hadoop-daemon.sh stop namenode
    ;;
    *)
        echo "Usage hadoop.sh init | start | stop"
    ;;
esac

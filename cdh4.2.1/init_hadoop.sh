#!/usr/bin/env bash
# coding=utf-8
# Author: zhaigy@ucweb.com
# Data:   2013-01

. support/PUB.sh
start-journalnode.sh
sleep 3
hadoop namenode -format
sleep 3

STANDBY=""
for s in $NAME_NODES
do
  if [ $ME != $s ]; then
    STANDBY=$s
  fi
done
var_die STANDBY
same_to platform31 $HOME/hadoop_name

start-zk-all.sh
sleep 3
hdfs zkfc -formatZK

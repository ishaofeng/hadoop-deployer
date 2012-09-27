#!/usr/bin/env bash
# coding=utf-8
# Author: zhaigy@ucweb.com
# Data:   2012-09
main()
{
  . PUB.sh
  [ -f ./install_env.sh ] && : || die "install_env.sh file not exits";
  echo ">> uninstall hue"
  sh uninstall_hue.sh
  echo ">> uninstall hbase"
  sh uninstall_hbase.sh
  echo ">> uninstall hive"
  sh uninstall_hive.sh
  echo ">> uninstall hadoop"
  sh uninstall_hadoop.sh
}

#====
main

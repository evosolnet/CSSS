#!/bin/ksh

AppName="CSSS.jar"

# get the pids of SERVER_NAME
pids=`/bin/ps auxww | grep ${AppName} | grep -v grep |awk '{print $2}'`

for pid in $pids ; do
  echo "Shutting down CSSS process $pid ..."
  kill -9 $pid
# verify process termination
  sleep 1
  verify=`/bin/ps auxww | grep $pid | grep -v grep | awk '{print $2}'`
  if [ "$verify" -eq "" ]
  then
    echo "Shutdown $pid successfully."
  else
    echo "Shutdown $pid failed."
  fi
done
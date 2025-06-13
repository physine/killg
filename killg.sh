#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: killg [search term]"
  exit 1
fi

# find matching processes
procs=$(ps -e | grep "$1" | grep -v "grep")

if [ -z "$procs" ]; then
  echo "No processes found matching '$1'."
  exit 0
fi

echo "Killing the following processes:"

# loop over each matched process
echo "$procs" | while read -r line; do
  pid=$(echo $line | awk '{print $1}')
  name=$(echo $line | awk '{for(i=4;i<=NF;++i) printf "%s ", $i; print ""}')
  echo "PID: $pid | Name: $name"
  kill "$pid"
done

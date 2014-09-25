#!/bin/bash

#interactive
if [ $# = 1 ]; then
  cat /etc/issue
  bash check.sh
  echo "Continue and apply the patch (y/n)?"
  read CONTINUE
else
  cat /etc/issue
  bash check.sh
fi
# add the LTS sec repo
echo "#LTS security" >> /etc/apt/sources.list
echo "deb http://http.debian.net/debian/ squeeze-lts main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://http.debian.net/debian/ squeeze-lts main contrib non-free" >> /etc/apt/sources.list

# update and install patched bash
apt-get update
apt-get install bash -y

echo "Run a new bash shell and execute check.sh again"

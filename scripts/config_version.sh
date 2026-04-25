#!/bin/sh
if [ -e "$1/.git" ]; then
  /usr/bin/git --git-dir "$1/.git" rev-parse --short HEAD
else
  /bin/date +%s
fi

#!/bin/sh
# Get the hostname of the current Puppet server
SERVER=$(hostname -f)

if [ -e "$1/.git" ]; then
  # Get the short Git SHA
  SHA=$(/usr/bin/git --git-dir "$1/.git" rev-parse --short HEAD)
  echo "${SERVER}: ${SHA}"
else
  # Fallback to timestamp if Git is missing
  echo "${SERVER}: $(/bin/date +%s)"
fi
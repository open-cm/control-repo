#!/bin/sh
# Get the hostname of the current Puppet server
SERVER=$(hostname -f)

if [ -e "$1/$2/.r10k-deploy.json" ]; then
  # Get the short Git SHA
  SHA=$(/usr/bin/cat "$1/$2/.r10k-deploy.json" | grep signature | cut -d'"' -f4 | cut -c1-7)
  echo "${SERVER}: ${SHA}"
else
  # Fallback to timestamp if Git is missing
  echo "${SERVER}: $(/bin/date +%s)"
fi
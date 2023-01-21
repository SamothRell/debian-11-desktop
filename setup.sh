#!/bin/bash
#
# setup.sh
#

# Current directory
CWD=$(pwd)

# Default to english for admin tasks
LANG=en_US.utf8
export LANG

# Slow things down a bit.
SLEEP=1

# Make sure the script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then

  echo
  echo "  Please run with sudo or as root." >&2
  echo

  exit 1

fi
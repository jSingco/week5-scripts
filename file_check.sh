#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Usage: file_check.sh <path>"
	exit 1
fi
PATH_TO_CHECK=$1
if [ -f "$PATH_TO_CHECK" ]; then
	echo "$PATH_TO_CHECK is a regular file"
elif [ -d "$PATH_TO_CHECK" ]; then
	echo "$PATH_TO_CHECK is a directory"
else
	echo "$PATH_TO_CHECK does not exist"
fi


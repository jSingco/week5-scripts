#!/bin/bash
set -euo pipefail
read -p :"Enter a number: " NUM
if [ -z "$NUM"]; then
	echo "Error: you must enter a value."
	exit 1
fi
if [ $NUM -gt 0 ]; then
	echo "$NUM is positive"
elif [ $NUM -lt 0 ]; then 
	echo "$NUM is negative"
else
	echo "$NUM is zero"
fi







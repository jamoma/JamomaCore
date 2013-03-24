#!/bin/bash

# Source is a file
# Destination is a folder

# If the folder doesn't exist, then fail silently

SRC=$1
DST=$2

if [ -e $DST ]
then
	cp $1 $2
fi

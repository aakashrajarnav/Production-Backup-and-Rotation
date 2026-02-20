#!/bin/bash

mkdir /home/aakashraj/fun

if [ $? -eq 0 ]; then
	echo "Success"
	cd /home/aakashraj/fun
else
	echo "Error"
	exit 1
fi

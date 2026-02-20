#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Plaese pass a file as an argument"
	exit 1
fi

if [ -f $1 ]
then
	echo "File exists"
else
	echo "File doesnot exists"
fi

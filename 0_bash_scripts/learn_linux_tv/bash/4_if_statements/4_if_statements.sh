#!/bin/bash

# If statements

# basic if statement
mynum=2000
if [ $mynum -eq 200 ]
then
	echo "200"
else
	echo "not 200"
fi

# check for the presence of a file
if [ -f /home/quijanju/text_files/temp.txt ]
then
	echo "this file exists"
else
	echo "this file does not exist"
fi

# check for the presence of a directory
if [ -d /home/quijanju/text_files ]
then
	echo "this directory exists"
else
	echo "this directory does not exist"
fi

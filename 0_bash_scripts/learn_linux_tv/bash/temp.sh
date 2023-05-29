#!/bin/bash

file="/home/quijanju/text_files/temp.txt"

while read -r line; do
	echo -e "$line\n"
done <$file

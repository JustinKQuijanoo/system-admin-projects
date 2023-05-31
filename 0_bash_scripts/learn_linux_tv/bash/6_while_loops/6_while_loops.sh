#!/bin/bash

# While loops

num=1

while [ $num -le 10 ]
do
    echo $num
    num=$(( $num + 1 ))
    sleep 0.75
done
echo "done!"


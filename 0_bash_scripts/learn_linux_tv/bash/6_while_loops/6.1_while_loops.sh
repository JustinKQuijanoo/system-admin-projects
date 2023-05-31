#!/bin/bash

while [ -f ~/testfile ]
do
    echo "As of $(date), this file exists."
    sleep 0.10
done

echo "As of $(date), this file no longer exists."

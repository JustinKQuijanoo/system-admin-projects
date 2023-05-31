#!/bin/bash

# 1. declare variables by typing the name of the variable followed by an equal sign
#    anything to the left of the equal sign is the value assigned to the variable
first_name="Justin"
last_name="Quijano"

# use 'echo' to print the value of variables 
# make sure to put a dollar sign '$' in front of the variable name
echo "Hello, my name is $first_name $last_name."

# 2. store output of a command in a variable 
#    e.g files=$(ls)
files=$(ls)
echo -e "\nFiles in current directory:\n$files"

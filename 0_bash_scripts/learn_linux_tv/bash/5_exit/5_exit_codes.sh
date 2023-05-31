#!/bin/bash

package=htop

sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then
    echo -e "\nThe installation of $package was successful."
    echo "The new command is available here:"
    which $package
    echo -e "\nThe exit code is $?"
else
    echo -e "\nThe installation of $package has failed (just like me fr)"
    echo -e "The exit code is $?"
fi

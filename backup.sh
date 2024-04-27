#!/bin/bash

#SOURCE=/tmp/ram/app-logs
DESTINATION=/tmp/ram/archive/
DATE=$(date  +%F-%H-%M)

#Enter the Source dir
read -p "Enter source directory: " source

#Zipping the source directory and moving into destination folder
#cd $SOURCE
tar -cvzf ${DESTINATION}/${DATE}_backup.tar.gz $source

#Moving to destination directory
#cd /tmp/ram
#mv *.tar.gz $DESTINATION

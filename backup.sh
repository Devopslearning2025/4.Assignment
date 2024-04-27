#!/bin/bash
SOURCE=/tmp/ram/app-logs
DESTINATION=/tmp/ram/
DATE=$(date  +%F-%H-%M-%S)

#Zipping the source directory in the destination folder
tar -cvzf ${SOURCE}-${DATE}.tar.gz $SOURCE

#Moving to destination directory
cd /tmp/ram
mv *.tar.gz $DESTINATION

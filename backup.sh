#!/bin/bash
SOURCE=/tmp/ram/
DESTINATION=/tmp/
DATE=$(date +%F-%H-M%-S%)

#Zipping the source directory in the destination folder
tar -cvzf ${SOURCE}-${DATE}.tar.gz $SOURCE

#Moving to destination directory
cd /tmp
mv ${SOURCE}-${DATE}.tar.gz $DESTINATION

#!/bin/bash
SOURCE=/tmp/ram/
DESTINATION=/tmp/
DATE=$(date +%F-%H-M%-S%)

#Zipping the source directory in the destination folder
tar -xvzf $SOURCE_$DATE $DESTINATION
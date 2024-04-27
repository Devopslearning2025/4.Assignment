#!/bin/bash

table="
Name Age
Ramesh 32
Suresh 33
Naresh 34"

my_table=$(echo "$table"|awk '{
    for (i = 1; i <= NF; i++) {
        if (NR == 1){
            row[i] = $i
        } else {
            row[i] = row[i] " " $i
        }
    }
    } END {
   for (i = 1; i <= NF; i++) {
      print row[i]
   }
    }')
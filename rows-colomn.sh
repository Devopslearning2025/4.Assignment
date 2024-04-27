#!/bin/bash

table=" name age 
ramm 32
rahim 33
alla 34"

transpose_table=$(echo "$table"|awk '{
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

## Print the transposed matrix
echo "$transpose_table"

#!/bin/bash

# Original matrix
#matrix="1 2 3
#4 5 6
#7 8 9"

## Transpose the matrix
#transpose_matrix=$(echo "$matrix" | awk '{
 #   for (i = 1; i <= NF; i++) {
  #      if (NR == 1) {
   #         row[i] = $i
    #    } else {
     #       row[i] = row[i] " " $i
      #  }
    #}
#} END {
 #   for (i = 1; i <= NF; i++) {
  #      print row[i]
   # }
#}')

## Print the transposed matrix
#echo "$transpose_matrix"
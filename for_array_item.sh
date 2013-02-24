#!/bin/bash

# get pwd file as space-seperated string format
arr=(`ls`)

# var i as array_subscript, coa computed for arr item count
for (( coa=${#arr[*]}, i=0; coa > 0; coa--,i++ )); do
	printf "arr[] item ... %s\n" ${arr[i]}
done

#!/bin/bash

arr=(a a a b b b c c c d d d)

for ((cnt=${#arr[*]},i=0, j=1, k=2; \
	 cnt > 0; \
	 cnt--, cnt--, cnt--, i=k, i++, j=i, j++, k=j, k++));do 
echo ${arr[i]} ${arr[j]} ${arr[k]}
done

# output
# a a a
# b b b
# c c c
# d d d
# . . .

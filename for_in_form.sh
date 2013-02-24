#!/bin/bash

numseq=`seq 10`

for num in `echo ${numseq}`
do
	echo -n $num
done
echo

# or
for num2 in `seq 10`
do
	echo -n $num2
done
echo

# or
for num3 in 1 2 3 4 5 6 7 8 9 10
do
	echo -n $num3
done
echo

# man bash, search 'for'

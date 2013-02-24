#!/bin/bash

# read cmd save input to line variable, return 0 if not encounter EOF
cat /proc/meminfo | while read line
do
	echo $line
done

# fileconent to single line
# read cmd, default use newline '\n' as delimiter, so $line contain no '\n'
cat /proc/meminfo | while read line
do
	echo -n $line
done

# man bash, search 'while'
# man read
# man echo

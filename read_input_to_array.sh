#!/bin/bash

echo "Enter somether you like, then press ENTER"
# read -a option read line into array, index start at 0, 1, 2, etc.
read -a namearr

echo "output each word you enter"
printf "word ... %s\n" ${namearr[0]}
printf "word ... %s\n" ${namearr[1]}
printf "word ... %s\n" ${namearr[2]}

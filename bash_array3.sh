#!/bin/bash

#init array method 3
arr=([0]=100 [2]=300 [5]=abc,)

printf "arr item ... %i\n" ${arr[0]}
printf "arr item ... %i\n" ${arr[2]}
printf "arr item ... %s\n" ${arr[5]}

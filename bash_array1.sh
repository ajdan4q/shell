#!/bin/bash

# init array method one
a[0]=100
a[100]=test
a[101]=xx

echo ${a[0]} ${a[100]} ${a[101]}

# format output use c style printf
printf "a[0]   value is %s\n" ${a[0]}
printf "a[100] value is %s\n" ${a[100]}
printf "a[101] value is %s\n" ${a[101]}

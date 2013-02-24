#!/bin/bash

#Jan 23 20:30:02 msj CROND[17445]: (root) CMD (/usr/lib/sa/sa1 1 1)

# make arr as associative array
unset -v arr
declare -A arr

while read -r mon day time host exe cmdline; do
	(( arr['$cmdline']++ )) # failed, key有特殊字符时，失败。用单引号OK,WHY?
	#arr["$cmdline"]=$(( ${arr[$cmdline]}+1 ))
	#let arr['$cmdline']++
done < /var/log/cron

# print relative array
for item in "${!arr[@]}"; do
	printf "%-50s %s\n" "$item" "${arr[$item]}"
done

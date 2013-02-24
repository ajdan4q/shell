#!/bin/bash

proc_count=10

for (( i=0; $i < $proc_count; i++ )); do
	sleep $i &
done

wait

echo `date +%F" "%T ` "all jobs have finished"

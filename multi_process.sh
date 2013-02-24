#!/bin/bash

job(){
	sleep $RANDOM
}

ts(){
	echo    "`date +%F" "%T` $@"
}

tsn(){
	echo -n "`date +%F" "%T` $@"
}

proc_limit=100
res_count=$RANDOM
run_proc=0
check_interval=10
cmd="sleep $RANDMON"

for (( ;; )); do
	run_proc=`pgrep sleep|wc -l`
	ts "res_count left $res_count, work proc $run_proc"

	# job done
	if [[ "$res_count" -eq 0 && "$run_proc" -eq 0 ]]; then
		#break;
		exit 0
	fi

	# new job
	if [[ "$run_proc" -lt "$proc_limit" && "res_count" -ne 0 ]]; then
		coproc sleep 50
		res_count=`expr $res_count - 1`
		ts "new job $COPROC_PID"
	else
		sleep $check_interval
	fi
done

# coproc BUG may run one process a time

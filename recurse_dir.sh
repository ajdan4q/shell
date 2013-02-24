#!/bin/bash

. /root/bash/debug.sh

recurse_dir()
{
	local dir="$1"
	#local dir_count=0

	cd "$dir"
	debug echo "enter $dir"

	for item in `ls`; do
		if [ -f "$item" ]; then
			echo "... $item"
		fi

		if [ -d "$item" ]; then
			debug echo "$item:"
			recurse_dir $item
			#(( dir_count++ ))
			cd ..
		fi
	done

	#if [ "$dir_count" -eq 0 ]; then
	#	echo "done"
	#fi
}

recurse_dir /root

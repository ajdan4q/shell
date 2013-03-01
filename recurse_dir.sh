#!/bin/bash

. /root/bash/debug.sh

# finished condiction: walk through file tree
recurse_dir()
{
	local dir="$1"
	#local dir_count=0

	cd "$dir"	# here change current work directory
	debug echo "enter $dir"

	for item in `ls`; do
		if [ -f "$item" ]; then
			echo "... $item"
		fi

		if [ -d "$item" ]; then
			debug echo "$item:"
			recurse_dir $item
			#(( dir_count++ ))
			# reset current work directory to before invoked recurse_dir
			cd ..
		fi
	done
}

recurse_dir /root

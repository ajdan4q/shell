#!/bin/sh 
. /root/bash/debug.sh

shopt -s dotglob	# enable dot-file match, hiden file. but not '.' and '..'
shopt -s nullglob	# remove failed file-glob word

# just echo it
handle_file()
{
	echo "$1"
}

recursive()
{
	file="$1"

	# is file
	if [[ -f "$file" ]]; then
		debug log_info $file is file
		handle_file "$file"
		return $?
	fi

	[[ ! -d "$file" ]] && { log_err $file not dir; return 1; }

	# if dir
	handle_file "$file"	# handle directory name first

	for item in $file/*; do
		[[ -f "$item" ]] && { handle_file "$item"; continue; }

		# omit dot, dot-dot file , not effect.
		if [[ "$item" == "." || "$item" == ".." ]]; then
			debug log_info omit dot, dot-dot file
			continue
		fi
		recursive "$item"
	done
}

main()
{
	[[ -z $1 ]] && { log_err "USAGE $0 directory/file"; return 1; }
	recursive "$1"
	return $?
}

main "$1"

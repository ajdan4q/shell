#!/bin/bash

. /root/bash/debug.sh

user=root
password=ajdan4q
host=localhost

# use if...fi for block comment, just like c
if false; then
ftp -n<<end
prompt
open $host
user $user $password
ls bash
bye
end
fi

struct_ftp_cmd()
{
	# add a newline
	cmd+="
ls $1"
}

# ftp initial command
cmd="
verbose
prompt
open $host
user $user $password"

for dir in bash c; do
	struct_ftp_cmd $dir
done

# ftp end command
cmd+="
bye"

debug echo "$cmd"

# ftp accept here-string
ftp -n <<< "$cmd"

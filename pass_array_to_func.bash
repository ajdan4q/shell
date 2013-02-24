#!/bin/env bash

unset -v arr
arr=( {0..100} )

get_array()
{
	local arr_name="$1"
	#local -a array=( "${!arr_name[@]}" )
	#local -a 'array=("${!'"$arr_name"'[@]}")'
	printf "%s " "${!1[@]}"
	#printf "%s " "${arr_name[@]}" # ouput 'arr'
	echo
}

main()
{
	#printf "%s " "${arr[@]}"
	#echo
	get_array arr
}

#main

aaa=arr
echo "${!aaa[@]}"

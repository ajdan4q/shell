#!/bin/bash

. /root/bash/debug.sh

PATH+=":/usr/sbin/"

[ "$UID" -ne 0 ] && { log_err "$0 must be run at root" ; exit 1; }

syn_dt()
{
	if [[ -f /etc/ntp.conf ]]; then
		for srv in `awk '/^server/{print $2}' /etc/ntp.conf`; do
			ntpdate $srv > /dev/null && break
		done
	fi

	local ret=$?

	if [[ $ret -eq 0 ]]; then
		hwclock -w
	fi

	return $ret
}

find_and_unset_proxy()
{
	while read line; do
		case "$line" in
		*=*)
			proxy="${line%%=*}"
			unset $proxy;;
		*)
			:;;
		esac
	done < ~/proxy.sh
}

# if failed, set proxy, then try again
#syn_dt || { source ~/proxy.sh && syn_dt; }

if ! syn_dt; then # first try failed
	if [ -n "$http_proxy" ]; then
		printf  "unset proxy, try again\n"
		find_and_unset_proxy
		syn_dt
	else
		printf  "set proxy, try again\n"
		source ~/proxy.sh && syn_dt
	fi
fi

# debug function
debug ()
{
	[[ $debug = 1 ]] && "$@" || :
}

ts() { echo `date` $*; }

log_info() { ts INFO $*; }

log_err()
{
	local ret=$?; ts ERROR $* 1>&2; return $ret
}

err_ret()
{
	local ret=$?; ts ERROR $* 1>&2; return $ret;
}

err_exit()
{
	local ret=$?; ts ERROR $* 1>&2; exit $ret;
}

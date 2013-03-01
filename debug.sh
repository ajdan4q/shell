# debug function
debug ()
{
	[[ $debug = 1 ]] && "$@" || :
}

ts()
{
	echo `date` $*
}

log_info()
{
	ts INFO $*
}

log_err()
{
	ts ERROR $* 1>&2
}

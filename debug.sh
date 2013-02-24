# debug function
debug ()
{
	[[ $debug = 1 ]] && "$@" || :
}

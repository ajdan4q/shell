#!/bin/bash

debugme() {
	[[ $script_debug = 1 ]] && "$@" || :
	# be sure to append || : or || true here or use return 0, since the return code
	# of this function should always be 0 to not influence anything else with an unwanted
	# "false" return code (for example the script's exit code if this function is used
	# as the very last command in the script)
}

#script_debug=1

debugme echo i am a debug
echo i not a debug

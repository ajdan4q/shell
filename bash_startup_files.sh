#!/bin/bash

if [ -z "$BASH_ENV" ]; then
	echo "BASH_ENV NOT SET"
else
	echo "BASH=+$BASH_ENV+"
fi

if [ -z "$ENV" ]; then
	echo "ENV NOT SET"
else
	echo "ENV=+$ENV+"
fi

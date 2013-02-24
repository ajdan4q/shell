#!/bin/bash

echo "\$@ $@"
echo "\$* $*"
echo "$#"
echo "$0"

shift

echo "after shift pos argu"

echo "\$@ $@"
echo "\$* $*"
echo "$#"
echo "$0"

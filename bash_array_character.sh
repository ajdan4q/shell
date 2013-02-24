#!/bin/bash

# iterate each item of array
#arr=( zero one two three four five six seven eight nine ten )
arr=(`ls`)

printf "arr[] item count is %i.\n"     ${#arr[*]}
printf "arr[] item count is %i too.\n" ${#arr[@]}

echo
echo "print each item and their character ... "
echo

for index in `seq ${#arr[*]}`; do
	index=`expr $index - 1` # (1,2,3) -> (0,1,2)
	printf "index %2i, length=%i, arr[%i]=%s\n" \
		$index ${#arr[$index]} $index ${arr[$index]}
done

# array item length:  ${#arr[index]}
# array item count :  ${#arr[*]} or ${#arr[@]}

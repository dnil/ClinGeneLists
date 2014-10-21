#!/bin/bash


status=0

for file in *txt;
do 
    redundant_line_count=`cat $file |sort |uniq -c | grep -cv \ 1 `
    if [ $redundant_line_count -gt 1 ] 
    then
	echo Redundant lines found in $file!
	cat $file |sort |uniq -c | grep -v \ 1 
	status=1
    fi
done

exit $status

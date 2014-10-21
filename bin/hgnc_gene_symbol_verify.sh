#!/bin/bash

status=0

for file in *txt;
do
    for genesymbol in `cat $file` ; 
    do 
	genesymbolcount=`wget -qO- --header='Accept:text/xml' http://rest.genenames.org/search/symbol/$genesymbol |grep -c $genesymbol`
	if [ $genesymbolcount -ne 1 ] 
	then
	    echo "Failed lookup for HGNC $genesymbol in $file.";
	    status=1
	fi
    done
done

exit $status
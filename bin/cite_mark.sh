#!/bin/bash

cd src
for file in *txt; 
do 
    awk '{print "\""$1"\"" }' $file > ../derived/${file%%.txt}.cite.txt ; 
done

cd ..

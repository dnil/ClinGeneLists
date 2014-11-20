#!/bin/bash

cd src
for file in *txt; 
do 
   awk ' ($1 != "") {print "ref|"$1} ' $file > ../derived/${file%%.txt}.bed_annot.txt ; 
done

cd ..

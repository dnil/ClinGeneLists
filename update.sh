#!/bin/sh

./bin/cite_mark.sh

cd src 
../bin/check_redundancy.sh
../bin/hgnc_gene_symbol_verify.sh
cd ..

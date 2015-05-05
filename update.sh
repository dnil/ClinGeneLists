#!/bin/sh

cd src 
../bin/check_redundancy.sh
../bin/hgnc_gene_symbol_verify.sh
sha256sum *
cd ..

./bin/cite_mark.sh
./bin/ref_quote_for_bed.sh


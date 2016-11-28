#!/bin/bash
# now we need to build blast / hmmer results, make sure to run blast + hmmer before proceeding
echo "Rlies on running x_blast and x_pfam."
ln -s x_blast/*.outfmt6 ./
ln -s x_pfam/*.pfam.parse.tbl ./

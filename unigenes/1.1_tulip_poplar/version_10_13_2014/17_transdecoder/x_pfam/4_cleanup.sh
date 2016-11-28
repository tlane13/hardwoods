#!/bin/bash
# cleanup directory
cat 3_output/* > Acer_saccharum_022416.pfam.tbl
cat 3_output/* | grep -v "^#" > Acer_saccharum_022416.pfam.parse.tbl
rm -fr 3_output
rm -fr 3_input
rm -f out

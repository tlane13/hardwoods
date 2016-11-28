#!/bin/bash
# cleanup the directory
cat 3_output/* > Liriodendron_tulipifera_10_13_2014.bastp.outfmt6
rm -rf 3_output
rm -rf 3_input
rm -f out
rm -rf uniprot

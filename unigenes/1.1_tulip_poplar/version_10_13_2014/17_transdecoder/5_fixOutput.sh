#!/bin/bash
# need to make some modifications to the output...
sed 's/\*//g' Liriodendron_tulipifera_10_13_2014_transcripts.fasta.transdecoder.pep |\
sed 's/comp/Liriodendron_tulipifera_10132014_comp/g' |\
sed 's/|/_/g' > Liriodendron_tulipifera_10_13_2014_peptides.fasta

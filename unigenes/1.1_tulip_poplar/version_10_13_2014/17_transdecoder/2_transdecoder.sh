#!/bin/bash
# run transdecoder on assembly to find long orfs
PATH=/lustre/projects/staton/software/cd-hit-v4.6.1-2012-08-27:$PATH
/lustre/projects/staton/software/TransDecoder-2.0.1/2.0.1/TransDecoder.LongOrfs \
-t Liriodendron_tulipifera_10_13_2014_transcripts.fasta >& 2_output.txt

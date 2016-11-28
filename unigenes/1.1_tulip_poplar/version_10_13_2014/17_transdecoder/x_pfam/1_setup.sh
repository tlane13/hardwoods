#!/bin/bash
# create directories
mkdir 3_input
mkdir 3_output
mkdir ogs_output
# link to transdecoder results + pfam db
ln -s /lustre/projects/staton/libraries/pfam/Pfam-A.hmm* ./
ln -s ../Liriodendron_tulipifera_10_13_2014_transcripts.fasta.transdecoder_dir/longest_orfs.pep ./

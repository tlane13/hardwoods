#!/bin/bash
# create relevant directories
mkdir uniprot
mkdir 3_input
mkdir 3_output
mkdir ogs_output
# link to transdecoder results
ln -s /lustre/projects/staton/libraries/uniprot/uniprot_sprot.fasta* ./uniprot
ln -s ../Liriodendron_tulipifera_10_13_2014_transcripts.fasta.transdecoder_dir/longest_orfs.pep ./

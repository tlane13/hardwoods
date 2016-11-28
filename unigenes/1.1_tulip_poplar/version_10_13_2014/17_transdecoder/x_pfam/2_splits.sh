#!/bin/bash
# split up jobs so faster runs on newton
/lustre/projects/staton/unpublished_lab_code/perl/fasta_scripts/split.pl longest_orfs.pep 50
mv *.pep.* 3_input

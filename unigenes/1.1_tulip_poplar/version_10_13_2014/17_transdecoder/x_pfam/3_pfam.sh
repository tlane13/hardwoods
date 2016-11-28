#!/bin/bash
# create and submit job to cluster (hmmer)
echo "
#$ -N hmmer
#$ -q short*
#$ -t 1-50
#$ -cwd
#$ -o ./ogs_output/ogs_output.txt
#$ -e ./ogs_output/ogs_error.txt
/lustre/projects/staton/software/hmmer-3.1b2-linux-intel-x86_64/binaries/hmmscan \
--domtblout ./3_output/pfam.domtblout.$SGE_TASK_ID \
Pfam-A.hmm \
./3_input/longest_orfs.pep.$SGE_TASK_ID" > job.ogs
qsub job.ogs
rm -f job.ogs

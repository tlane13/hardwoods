#!/bin/bash
# submit newton jobs
echo "
#$ -N blast
#$ -q short*
#$ -t 1-50
#$ -cwd
#$ -o ./ogs_output/ogs_output.txt
#$ -e ./ogs_output/ogs_error.txt
module load blast
blastp \
-query ./3_input/longest_orfs.pep.$SGE_TASK_ID \
-db uniprot/uniprot_sprot.fasta \
-max_target_seqs 1 \
-outfmt 6 \
-evalue 1e-5 > ./3_output/$SGE_TASK_ID.blastp" > sub.ogs
qsub sub.ogs
rm -f sub.ogs

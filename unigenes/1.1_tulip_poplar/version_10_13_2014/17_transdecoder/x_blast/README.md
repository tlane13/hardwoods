####create relevant directories
```
mkdir uniprot
mkdir 3_input
mkdir 3_output
mkdir ogs_output
```
####link to transdecoder results
```
ln -s /lustre/projects/staton/libraries/uniprot/uniprot_sprot.fasta* ./uniprot
ln -s ../Liriodendron_tulipifera_10_13_2014_transcripts.fasta.transdecoder_dir/longest_orfs.pep ./
```
---
####split this up to run it faster on newton
```
/lustre/projects/staton/unpublished_lab_code/perl/fasta_scripts/split.pl longest_orfs.pep 50
mv *.pep.* 3_input
```
---
####submit newton jobs
```
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
```
---
####cleanup the directory
```
cat 3_output/* > Liriodendron_tulipifera_10_13_2014.bastp.outfmt6
rm -rf 3_output
rm -rf 3_input
rm -f out
rm -rf uniprot
```
---

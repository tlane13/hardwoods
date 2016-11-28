####create directories
```
mkdir 3_input
mkdir 3_output
mkdir ogs_output
```
####link to transdecoder results + pfam db
```
ln -s /lustre/projects/staton/libraries/pfam/Pfam-A.hmm* ./
ln -s ../Liriodendron_tulipifera_10_13_2014_transcripts.fasta.transdecoder_dir/longest_orfs.pep ./
```
---
####split up jobs so faster runs on newton
```
/lustre/projects/staton/unpublished_lab_code/perl/fasta_scripts/split.pl longest_orfs.pep 50
mv *.pep.* 3_input
```
---
####create and submit job to cluster (hmmer)
```
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
```
---
####cleanup directory
```
cat 3_output/* > Acer_saccharum_022416.pfam.tbl
cat 3_output/* | grep -v "^#" > Acer_saccharum_022416.pfam.parse.tbl
rm -fr 3_output
rm -fr 3_input
rm -f out
```
---

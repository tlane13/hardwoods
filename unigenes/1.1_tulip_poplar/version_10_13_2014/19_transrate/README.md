####create a link to the transcriptome assembly
```
ln -s ../Liriodendron_tulipifera_10132014_transcripts.fasta ./
```
####create a link to trimmed reads
```
ln -s ../../../ARCHIVE/Liriodendron_tulipifera/penn_state_ozone_miseq/*trimmed.paired.fastq.tar.gz ./
```
####concatenate rcorrected reads into left and right read files
```
for f in `ls *R1.trimmed.paired.fastq.tar.gz`
do
	tar -xvzf $f
done
for f in `ls *R2.trimmed.paired.fastq.tar.gz`
do
        tar -xvzf $f
done
cat *R1.trimmed.paired.fastq.tar.gz > left.fq
cat *R2.trimmed.paired.fastq.tar.gz > right.fq
```
---
####run transrate
```
/lustre/projects/staton/software/transrate-1.0.3/transrate \
--assembly Liriodendron_tulipifera_10132014_transcripts.fasta \
--left left.fq \
--right right.fq \
--threads 20
```
---

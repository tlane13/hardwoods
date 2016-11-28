####create link for the assembly
```
ln -s ../1_assemble/Liriodendron_tulipifera_10_13_2014_transcripts.fasta ./
```
---
####run transdecoder on assembly to find long orfs
```
PATH=/lustre/projects/staton/software/cd-hit-v4.6.1-2012-08-27:$PATH
/lustre/projects/staton/software/TransDecoder-2.0.1/2.0.1/TransDecoder.LongOrfs \
-t Liriodendron_tulipifera_10_13_2014_transcripts.fasta >& 2_output.txt
```
---
####now we need to build blast / hmmer results, make sure to run blast + hmmer before proceeding
```
echo "Rlies on running x_blast and x_pfam."
ln -s x_blast/*.outfmt6 ./
ln -s x_pfam/*.pfam.parse.tbl ./
```
---
####now run transdecoder with BLAST + hmmer results tied in
```
PATH=/lustre/projects/staton/software/cd-hit-v4.6.1-2012-08-27:$PATH
/lustre/projects/staton/software/TransDecoder-2.0.1/2.0.1/TransDecoder.Predict \
-t *_transcripts.fasta \
--retain_pfam_hits *.pfam.parse.tbl \
--retain_blastp_hits *.blastp.outfmt6 >& 4_output.txt
```
---
####need to make some modifications to the output...
```
sed 's/\*//g' Liriodendron_tulipifera_10_13_2014_transcripts.fasta.transdecoder.pep |\
sed 's/comp/Liriodendron_tulipifera_10132014_comp/g' |\
sed 's/|/_/g' > Liriodendron_tulipifera_10_13_2014_peptides.fasta
```
---

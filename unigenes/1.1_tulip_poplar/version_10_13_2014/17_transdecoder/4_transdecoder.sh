#!/bin/bash
# now run transdecoder with BLAST + hmmer results tied in
PATH=/lustre/projects/staton/software/cd-hit-v4.6.1-2012-08-27:$PATH
/lustre/projects/staton/software/TransDecoder-2.0.1/2.0.1/TransDecoder.Predict \
-t *_transcripts.fasta \
--retain_pfam_hits *.pfam.parse.tbl \
--retain_blastp_hits *.blastp.outfmt6 >& 4_output.txt

#!/bin/bash
# run transrate
/lustre/projects/staton/software/transrate-1.0.3/transrate \
--assembly Liriodendron_tulipifera_10132014_transcripts.fasta \
--left left.fq \
--right right.fq \
--threads 20

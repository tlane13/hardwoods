####create link of the assembly
```
ln -s ../Liriodendron_tulipifera_10132014_transcripts.fasta ./
```
---
####load python module
```
module load python
```
####export paths
```
export PATH=$PATH:/lustre/projects/staton/software/ncbi-blast-2.2.31+/bin/
export PATH=$PATH:/lustre/projects/staton/software/EMBOSS-6.6.0-new/emboss/
export PATH=$PATH:/lustre/projects/staton/software/hmmer-3.1b2-linux-intel-x86_64/binaries/
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lustre/projects/staton/software/mysql-5.6.23/lib
```
####run busco
```
python3 /lustre/projects/staton/software/BUSCO_v1.1b1/BUSCO_v1.1b1.py \
-o LT \
-in Liriodendron_tulipifera_10132014_transcripts.fasta \
-l /lustre/projects/staton/software/BUSCO_v1.1b1/plant_early_release/plantae \
-m trans >& 2_busco.out
```
---

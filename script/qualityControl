# Running quality control
# FastQC (version 2.5.2b)
#!/bin/bash
cd /<WorkDir>/ 
cat samples.txt | sort | uniq | while read id; do \
echo ${id}_1.fastq.gz
echo ${id}_2.fastq.gz

 /opt/FastQC/fastqc
 </path/to/Samples/Raw/reads/>${id}_1.fq.gz
 </path/to/Samples/Raw/reads/>${id}_2.fq.gz
 --extract # Uncompressed the output file after it has been created
 --outdir </path/to/outputDirectory/>
 done

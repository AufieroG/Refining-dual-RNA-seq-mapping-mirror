# Running mapping
# STAR (version 2.5.2b)
#!/bin/bash
cd cd /<WorkDir>/
cat samples.txt | sort | uniq | while read id; do \
echo ${id}_1P.fastq
echo ${id}_2P.fastq
STAR \
--runThreadN <threads> \	# Number of threads to use
--genomeDir </path/to/genomeDir> \	# Specifies path to the genome directory where genome indices where generated
--readFilesIn </path/to/read1>/${id}_1P.fastq </path/to/read2>/${id}_2P.fastq \	# Specifies path to input read1 and read2
--outFilterMultimapNmax 10 \	# Max number of multiple alignments allowed for a read: if exceeded, the read is considered unmapped
--outFilterMismatchNmax 5 \	# Maximum number of mismatches per pair
--outFileNamePrefix ${id} \	# Output files name prefix
--outSAMtype BAM SortedByCoordinate \	#Output sorted by coordinate "Aligned.sortedByCoord.out.bam" file, similar to samtools sort command.
--outReadsUnmapped Fastx \	# Output of unmapped and partially mapped reads in fastq file
--twopassMode Basic	# To run STAR 2-pass mapping mode for each sample separately
done

# Running pre-processing raw reads
# Trimmomatic (version v0.40)
#!/bin/bash
cd /<WorkDir>/ 
cat samples.txt | sort | uniq | while read id; do \
echo ${id}_1.fastq.gz
echo ${id}_2.fastq.gz
java -jar trimmomatic-0.40.jar \
PE \	# Paired End Mode
-threads <threads> \	# Number of threads to use
-phred33 \	# Specifies the base quality encoding
-summary ${id}.txt \	# Save statistics
</path/to/Samples/Raw/reads/>${id}_1.fastq.gz \	# Raw reads1
</path/to/Samples/Raw/reads/>${id}_2.fastq.gz \	# Raw reads2
-baseout ${id}.fastq.gz \	# Output result
LEADING:20 \	# Cut bases off the start of a read, if below a threshold quality
TRAILING:20 \	# Cut bases off the end of a read, if below a threshold quality
SLIDINGWINDOW:4:20 \	# Performs a sliding window trimming approach
MINLEN:75	# Drop the read if it is below a specified length
done

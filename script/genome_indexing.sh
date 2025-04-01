# Running genome indexing
# STAR (version 2.5.2b)
#!/bin/bash
STAR \
--runThreadN <threads> \	# Number of threads to use	
--runMode genomeGenerate \	# Option directs STAR to run genome indices generation job
--genomeDir </path/to/genomeDir> \	# Specifies path to the directory where the genome indices has to be stored
--genomeFastaFiles </path/to/genome/fasta> \	# Specifies the path to the FASTA files with the genome reference sequence
--sjdbGTFfile </path/to/annotations.gff> \	# Specifies the path to the file with annotated transcripts (in this case with GFF format)
--sjdbGTFtagExonParentTranscript <Parent> \	# For GFF format annotation file you need to use option "--sjdbGTFtagExonParentTranscript Parent"
--genomeSAindexNbases <int>	# Default:14; Int: length (bases) of the SA pre-indexing string>

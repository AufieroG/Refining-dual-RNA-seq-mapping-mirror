# Dual RNA-seq Analysis Pipeline

1. **Pre-processing of Raw Reads:**
   - **Tool:** Trimmomatic (version 0.39)
   - **Description:** Raw reads are filtered to remove low-quality bases and adapters.
   - **Script:** `script/preprocessing.sh`

2. **Genome Indexing:**
   - **Tool:** STAR (version 2.5.2b)
   - **Description:** Generation of genome indices for the host and parasite (or for the concatenated genome, in the case of the combined approach).
   - **Script:** `script/genome_indexing.sh`

3. **Mapping of Reads:**
   - **Tool:** STAR (version 2.5.2b)
   - **Description:** Mapping of filtered reads.
     - **Sequential Approach:** First, reads are mapped to the host genome, then unmapped reads are mapped to the parasite genome (or vice versa).
     - **Combined Approach:** Reads are mapped to a concatenated genome (host + parasite) in one single operation.
   - **Script:** `script/mapping.sh`

4. **Results Evaluation:**
   - Calculation of mapping metrics (precision, sensitivity, specificity, accuracy) and analysis of cross-mapping reads.
result/results_summary.md

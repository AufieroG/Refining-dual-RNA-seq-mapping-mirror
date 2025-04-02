# Dual RNA-seq Analysis Pipeline

1. **Quality control of Raw Reads:**
   - **Tool:** FastQC (v0.11.9)
   - **Description:** Raw reads are checked to identify any problems such as poor base-call quality or the presence of adapters.
   - **Script:** `script/qualityControl.sh`

2. **Pre-processing of Raw Reads:**
   - **Tool:** Trimmomatic (version 0.39)
   - **Description:** Raw reads are filtered to remove low-quality bases and adapters.
   - **Script:** `script/preprocessing.sh`

3. **Genome Indexing:**
   - **Tool:** STAR (version 2.5.2b)
   - **Description:** Generation of genome indices for the host and parasite (or for the concatenated genome, in the case of the combined approach).
   - **Script:** `script/genome_indexing.sh`

4. **Mapping of Reads:**
   - **Tool:** STAR (version 2.5.2b)
   - **Description:** Mapping of filtered reads.
     - **Sequential Approach:** First, reads are mapped onto the host genome, then unmapped reads are mapped onto the parasite genome (or vice versa).
     - **Combined Approach:** Reads are mapped onto a concatenated genome (host + parasite) in one single operation.
   - **Script:** `script/mapping.sh`

5. **Results Evaluation:**
   - Calculation of mapping metrics (precision, sensitivity, specificity, accuracy) and analysis of cross-mapping reads.
result/results_summary.md

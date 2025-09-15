> ⚠️ **Mirror Notice:** This repository is a mirror of [https://github.com/inDAGOverse/inDAGO](https://github.com/inDAGOverse/Refining-dual-RNA-seq-mapping).  
> All development, issues, and pull requests should be made in the source repository.

# Refining-dual-RNA-seq-mapping

**Title:** Refining dual RNA-seq mapping: sequential and combined approaches in host-parasitic plant dynamics

![pipeline](https://github.com/user-attachments/assets/2d6c2500-47c3-437f-8758-ebb54edba68f)

**Summary:**  
Transcriptional profiling in host plant-parasitic plant interactions is challenging due to the tight interface between host and parasitic plants and the percentage of homologous sequences shared. Dual RNA-seq offers a solution by enabling in silico separation of mixed transcripts from the interface region. However, it has to deal with issues related to multiple mapping and cross-mapping of reads in host and parasite genomes, particularly as evolutionary divergence decreases. In this paper, we evaluated the feasibility of this technique by simulating interactions between parasitic and host plants and refining the mapping process. 
More specifically, we merged host plant with parasitic plant transcriptomes and compared two alignment approaches:

- **Sequential Approach:** Reads are mapped in two steps, first to the host genome and then to the parasite genome (or vice versa).
- **Combined Approach:** Reads are mapped to a concatenated genome (host + parasite) in a single step.

**Objective:**  
To demonstrate that dual RNA-seq analysis, through both sequential and combined approaches, is a valid strategy to study host plant - parasite plant interactions, while minimizing errors due to cross-mapping.

**Results:**  
The results show a high mapping rate (around 90%) and minimal cross-mapping, confirming the effectiveness of the dual RNA-seq approach in accurately separating transcripts from the two organisms within the same taxonomic kingdom. the evaluation metrics (i.e., precision, sensitivity, accuracy, and specificity) were all close to one.

More info can be found at [doi.org/10.3389/fpls.2024.1483717](https://doi.org/10.3389/fpls.2024.1483717)

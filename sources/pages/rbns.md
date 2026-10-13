# RNA Bind-N-Seq Data Standards 

> Snapshot of <https://www.encodeproject.org/rbns/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# RNA Bind-N-Seq Data Standards

### Assay Overview

RNA Bind-n-Seq is an *in vitro* approach to characterizing RNA binding proteins (RBPs) and their binding motifs<sup>1</sup>. RNA binding proteins bind pre-mRNA molecules in order to regulate their processing, and mature messenger RNAs to regulate translation and stability<sup>2</sup>. In this method, a recombinant RBP of interest is purified and incubated at various concentrations with randomized RNAs. They are then recaptured and the RNA is reverse-transcribed and sequenced.

The RNA Bind-n-Seq method was developed by the laboratory of Chris Burge at MIT.

**References**

1\. Lambert NJ, Robertson AD, and Burge CB. [RNA Bind-n-Seq: Measuring the Binding Affinity Landscape of RNA-Binding Proteins](https://www.encodeproject.org/publications/55c158f6-e7eb-4568-868a-55cd3b1640ce/). *Methods in Enzymology *558 (2015): 465-493.

2\. Lambert NJ, Robertson AD, et al. [RNA Bind-n-Seq: Quantitative Assessment of the Sequence and Structural Binding Specificity of RNA Binding Proteins](https://www.encodeproject.org/publications/483770c2-483f-4f5f-8543-7fa6bbc3c22b/). *Molecular Cell* 54(5) (2014); 887–900.

*Updated June 2017*

### Current Standards

- The recombinant protein should pass a Coomassie gel size/purity test such that the band of expected size is the only band present (labeled as "1B" beneath the lane) and or is predominant band if multiple bands present ("2B" or "MB" annotation).
- Experiments should have at least 4, preferably 5, RNA binding protein (RBP) concentrations plus an input control (concentrations used by default are 5, 20, 80, 320, and 1300 nM of recombinant protein).
- Each concentration should have at least 2.5 million total reads, with the majority (at least three out of five concentrations) at \>10 million total reads.
- At least one 6mer should show [enrichment (R) value](https://www.encodeproject.org/data-standards/terms/#enrichment) \>2 in at least one concentration (except in special cases where the R value is at least 1.4 and agrees with the literature, or in cases where an RNA structure rather than a sequence motif is expected).
- The 6mer R values at adjacent concentrations should have a [Spearman correlation](https://www.encodeproject.org/data-standards/terms/#concordance) of \> 0.9 for all concentrations that have significant signal above background.
- The experiment must pass routine metadata audits in order to be released.

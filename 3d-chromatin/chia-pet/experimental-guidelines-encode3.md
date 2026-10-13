# ChIA-PET: experimental guidelines (ENCODE3)

[Root](../../README.md) / [3D chromatin](../README.md) / [ChIA-PET](README.md) / Experimental guidelines (ENCODE3)

Source: [ENCODE Experimental Guidelines for ENCODE3 ChIA-PET v1.0](https://www.encodeproject.org/documents/4d5c9dd2-ec30-478d-bd85-360fc3cba033/@@download/attachment/chia_pet_guidelines.pdf), 3 pages. The printed title is "Standards and Guidelines for Chromatin Immunoprecipitation Based Interaction Analysis by Paired-End Tag Sequencing (ChIA-PET)", dated January 2017. The PDF prints no version number and does not mention ENCODE. The ENCODE3 and v1.0 labels come from the [previous guidelines page](../../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md). The current page lists the [ENCODE4 v2.0 guidelines](experimental-guidelines.md) instead. The document says it "should be revised annually". Page numbers are PDF pages.

Scope: ChIA-PET for a protein of interest, built with tagmentation-based or non-tagmentation library protocols. The document sets replicate and depth rules. It lists what to report, including two replicate reproducibility measures.

## Sample reporting

Section II lists "Information to be supplied with each sample".

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Cell lines | Source and lot number, growth time or passage number, cell density, and the culture protocol | should | 1 |
| Sonication | Method and number of cycles, if applicable | to be supplied | 1 |
| Library protocol | The protocol used, tagmentation-based or non-tagmentation | to be supplied | 1 |
| gDNA quantitation | After immunoprecipitation and after PCR amplification, "ideally" with the Qiagen High-Sensitivity assay | should | 2 |
| Linker sequence | "if used" | to be supplied | 2 |

## Design and replicates

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| [Biological replicates](../../GLOSSARY.md#biological-replicate) | Two. A biological replicate is "an independent growth of cells/tissue and subsequent analysis". | should | 2 |
| [Technical replicates](../../GLOSSARY.md#technical-replicate) | None needed for the same library | not required | 2 |

## Sequencing depth

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Depth, tagmentation-based protocols | A full dataset contains ">150 million reads" | should | 2 |
| Basis | Subsampling of a large GM12878 lymphoblastoid cell line (LCL) dataset. "Very little gain in reproducibility was observed past 150 million raw reads." | stated | 2 |
| Interactions at that depth | "~10,000 significant interactions" in the mango pipeline. Called interactions are "likely to increase" with more reads. | stated | 2 |
| PET length | Non-tagmentation (restriction enzyme) PETs are "typically 15-30 bp". Tn5 PETs are "~100-150 bp". | stated | 1-2 |

## Mapping and filtering

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Pre-mapping steps | Details provided, such as trimming low-quality bases and removing adaptor and linker sequences | must | 2 |
| Mapping program | Documented | should | 2 |
| Mapping parameters | All recorded. The examples are "Number of allowable mismatches, minimal score, maximum allowed sum quality scores at mismatches, etc." | should | 2-3 |
| Multi-mapping | State whether reads could match only uniquely or at multiple positions | stated | 3 |
| Duplicate PETs | Removed after mapping. Duplicates are "PETs sharing both 5’ read alignment positions". | should | 3 |
| Other filters | Detailed, for example removal of PETs closer or further apart than "some pre-set distance". No distance is given. | should | 3 |
| Usable PETs | Total recorded. A [usable PET](../../GLOSSARY.md#read-depth-units) here is "a uniquely mapping PET which has passed any post-mapping filtering steps". | should | 3 |
| Percent usable PETs | "# of usable PETs / total # of PETs *100" | stated | 3 |

## Replicate reproducibility

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| [Spearman correlation](../../GLOSSARY.md#spearman-correlation) | Of the number of PETs connecting all peak-pairs with >2 PETs linking them, between two replicates | report | 3 |
| Interaction overlap | Percent of interactions that overlap between the two replicates. An interaction has FDR<10% in the mango pipeline. Overlap means "the two anchor regions (i.e., peaks) being within 1 kbp of each other". | report | 3 |

## Conflicts and gaps

- The document sets no minimum for usable PETs, percent usable PETs, the Spearman correlation or the interaction overlap. It asks only that they be recorded or reported.
- The depth rule counts "reads" (p2). Its basis counts "raw reads". The document does not say whether a read is a single read or a read pair (PET).
- Depth is set only for tagmentation-based protocols. Non-tagmentation protocols have no depth target.
- The ~10,000 figure counts significant mango interactions. The portal's ≥ 10,000 protein factor binding peaks is a different metric.
- The terms page defines [correlation of interaction frequency](../../GLOSSARY.md#correlation-of-interaction-frequency) over all interactions and all replicate pairs. It defines [raw overlap](../../GLOSSARY.md#raw-overlap) as an average over all replicate pairs. Neither definition has the >2 PET filter or the mango FDR<10% and 1 kbp rules.
- Against the [portal ChIA-PET page](standards.md): the portal recommends ≥ 150,000,000 total read pairs and calls ≥ 180,000,000 high quality. This document asks for >150 million reads and has no higher tier. The portal counts read pairs.
- This document sets no threshold for the other portal metrics: bridge-linker fraction (≥ 0.5), non-redundant PETs (≥ 10,000,000), intra/inter-chromosomal PET ratio (≥ 1) and binding peaks (≥ 10,000). Its only linker rules are to report the sequence and to describe linker removal before mapping.

Changes in the [ENCODE4 v2.0 guidelines](experimental-guidelines.md) (July 2017):

- Depth: v1.0 asks for >150 million reads (p2). v2.0 expects a Total PET of 200,000,000 (±20%). Its text gives "~200-300 million raw reads" for a quality dataset.
- Replicates: v1.0 asks for two biological replicates. v2.0 sets no replicate number.
- Reproducibility: v1.0 asks for a Spearman correlation and an overlap percent. v2.0 sets no reproducibility metric.
- Interactions: v1.0 calls interactions at mango FDR<10%. v2.0 clusters PETs by "direct overlaps of PET reads with 500bp extension" and states no FDR. It expects >20,000 intra-chromosomal clusters with PET count ≥10.
- Duplicates: v1.0 says duplicate PETs "should be removed". v2.0 counts non-redundant PETs and reports redundancy (13% and 72% in its example) without a threshold.
- Quantitation: v1.0 names the Qiagen High-Sensitivity assay. v2.0 uses Qubit 2.0 and a high-sensitivity Bioanalyzer chip.
- PET length: v1.0 gives ~100-150 bp for Tn5 PETs. v2.0 gives "up to 2x250 bp" in its summary and "Up to 2x150 bp" in Table 1.
- Scope: v1.0 lists reporting items for any tagmentation or non-tagmentation protocol. v2.0 is one long-read protocol with five QC checkpoints and expected output values.
- Reporting: v2.0 drops the v1.0 lists for cell lines and mapping parameters. It specifies its own software versions and linker sequence instead.

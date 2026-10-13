# ChIP-chip: 2010 and 2011 standards

[Root](../README.md) / [DNA binding](README.md) / ChIP-chip

## Sources

| Label | Document | Date | URL |
|---|---|---|---|
| 2010 | ENCODE and modENCODE Guidelines For Experiments Generating Chromatin and Transcription Factor Data, Version 1.0 (portal title: Chromatin and Transcription Factor Data Standards v1.0), 17 pages | April 09, 2010 | [PDF](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) |
| 2011 | ENCODE and modENCODE Guidelines For Experiments Generating ChIP, DNase, FAIRE, and DNA Methylation Genome Wide Location Data, Version 2.0 (portal title: ChIP-seq, ChIP-chip, DNase-seq, FAIRE-seq and DNAme Standards v2.0), 20 pages | July 20, 2011 | [PDF](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) |

The [previous guidelines page](https://www.encodeproject.org/about/experiment-guidelines/experiment-guidelines-previous/) ([snapshot](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md)) lists both under ChIP-seq. Source cells give the printed page.

Scope: ChIP-chip in ENCODE and modENCODE. It maps DNA-associated proteins and chromatin modifications by probing genomic DNA microarrays with immunoprecipitated DNA. Both documents write ChIP-chip and ChIP-seq rules side by side. The 2010 document names ChIP-seq "the current method of choice" for mapping TF binding sites, at least for mammalian experiments (p5).

Control rules written for ChIP-seq and ChIP-chip together are in [ChIP-seq ENCODE2](chip-seq/encode2.md#controls). Antibody rows are in [ENCODE2 antibodies](../antibodies/encode2.md). Data submission rows (raw data to GEO, ratio tracks, called peaks, peak caller metadata) and the release rules for failing data are in [data reporting](../general/data-reporting.md).

## Replicates

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| [Biological replicates](../GLOSSARY.md#biological-replicate) | At least 2, for ChIP-chip or ChIP-seq | should | 2010 p5 |
| Recommended number | Three for ChIP-chip (two for ChIP-seq) | recommended | 2010 p5 |
| Replicates | At least two initially. A third if the first two are not highly concordant. | should; recommended (third) | 2011 p10 |
| Weak factors | More replicates than for ChIP-seq for factors with weaker signals, especially in larger genomes with more cross-hybridization noise | may be needed | 2011 p10 |

2011 explains that observed ChIP-chip enrichments are generally lower than ChIP-seq enrichments (p10).

## Replicate concordance

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Top targets | A significant correlation coefficient for the top targets. No value given. | should | 2010 p5 |
| Overlap | 80% of the top 40% of the targets of one list overlap the other list | should | 2010 p5 |
| Platform criteria | An appropriate consistency criterion was developed for each array platform. In general the ChIP-seq criterion (overlap of 80% for the top 40% of the targets) can be used. | can | 2011 p10 |

## Controls and scoring

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Control experiments | Performed, for both ChIP-seq and ChIP-chip | must | 2011 p7 |
| ChIP-chip steps | Control, replicates, scoring and quality control "are also performed" for ChIP-chip | stated | 2011 p9 |
| Two-color arrays (e.g., NimbleGen) | Control DNA, typically input, labeled with a different dye from the ChIP DNA (e.g., Cy3 vs Cy5) and hybridized on the same array | stated | 2011 p9 |
| One-color arrays (e.g., Affymetrix) | ChIP and control DNA hybridized separately | stated | 2011 p9-10 |
| Scoring | Data normalized and scored with one of many algorithms. No threshold given. | stated | 2011 p10 |

## Validation

Shared validation rules, including qPCR and sensitivity reporting, are in [ChIP-seq ENCODE2 validation](chip-seq/encode2.md#validation).

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Per-experiment validation | Early standards called for an alternate detection platform. "the decision to validate each experiment has been reconsidered" because of cost and effort. | stated | 2010 p5 |
| Validation platforms | qPCR, high-throughput sequencing or ChIP-chip. Validation is "highly recommended" for investigators lacking ChIP experience. | may | 2010 p5 |
| Sequencing to validate microarray | Sequenced to the depth specified for ChIP-seq. Data match to the degree specified for within-platform biological reproducibility. | "are to be"; should | 2010 p6 |
| Microarray to validate sequencing | Tiling microarrays representing at least 1% of the genome. Data match the sequencing data to the within-platform reproducibility standard. | "are to be"; should | 2010 p6 |
| ChIP-chip to validate ChIP-seq | Arrays representing 1% of the genome or more | should | 2011 p10 |
| Cross-platform expectation | ChIP-seq is "more sensitive and more specific" than ChIP-chip. Only the top ChIP-seq targets will generally validate using ChIP-chip. | stated | 2011 p10 |
| ChIP-chip q-value | A q-value of less than 0.05 "usually yields greater than two-fold enrichment by qPCR" | stated | 2011 p11 |

## Conflicts and gaps

- Replicate count: 2010 recommends three ChIP-chip replicates. 2011 asks for two and recommends a third only if the first two are not "highly concordant". It does not quantify that term.
- 2010 asks for a "significant correlation coefficient" with no value. 2011 says each array platform got its own consistency criterion but does not give them.
- The 2010 overlap rule points to Appendix I. Appendix I covers ChIP-seq only.
- No ChIP-chip scoring threshold is set. The 2011 limit of no higher than 5% FDR is written for ChIP-seq. The q-value note describes typical qPCR results.
- 2011 lists quality control among the ChIP-chip steps but names no ChIP-chip QC metric.

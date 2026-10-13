# RRBS: ENCODE2

[Root](../README.md) / [DNA methylation](README.md) / RRBS

Sources:

| Label | Document | Date | URL |
|---|---|---|---|
| 2010 | Chromatin and Transcription Factor Data Standards v1.0, section IV, 17 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating Chromatin and Transcription Factor Data". | Version 1.0, April 09, 2010 | [PDF](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) |
| 2011 | ChIP-seq, ChIP-chip, DNase-seq, FAIRE-seq and DNAme Standards v2.0, section IV, 20 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating ChIP, DNase, FAIRE, and DNA Methylation Genome Wide Location Data". | Version 2.0, July 20, 2011 | [PDF](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) |

Scope: Reduced Representation Bisulfite Sequencing (RRBS) of human ENCODE cell lines. RRBS digests genomic DNA with a methylation-insensitive restriction enzyme and purifies fragments of 40 to 120 bp. The fragments are bisulfite treated and sequenced. Each CpG's methylation comes from converted versus unconverted reads. Both documents say RRBS replaced [Methyl-seq](methyl-seq.md) and will be used for "the methylomes in all ENCODE lines".

## Coverage and concordance

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| [Biological replicates](../GLOSSARY.md#biological-replicate) | "Each method is performed on biological replicates to determine appropriate consistency measures" | stated | 2010 p8; 2011 p12 |
| Read alignment | Reads are "processed" (2010) or "mapped" (2011) "in a stringent manner to eliminate ambiguous alignments" | stated | 2010 p8; 2011 p12 |
| Library completeness | More than 500,000 CpGs assayed with at least 10 sequencing reads each | considered complete only when | 2010 p8; 2011 p12 |
| CpG coverage | At least 10X (2010) or "at least 10-fold" (2011) for accurate percent methylation | required | 2010 p8; 2011 p12 |
| Replicate concordance | 90% concordance in methylation levels at CpGs with greater than 10X (2010) or "greater than 10-fold" (2011) coverage in both replicates | required | 2010 p8; 2011 p12 |
| Agreement with [Methyl27](methyl27.md) | On the same samples, overlapping CpGs show 70% concordance in methylation levels | considered to be in agreement | 2010 p8-9; 2011 p12 |

## Conflicts and gaps

- Coverage has three cut-offs. Completeness counts CpGs with "at least 10 sequencing reads". Accuracy needs "at least 10X". Concordance uses CpGs with "greater than 10X". A CpG with exactly 10 reads counts for completeness and accuracy but not for concordance.
- Neither document defines "concordance" or how to compute it.
- Neither document sets a read depth, read length, conversion rate or assembly.
- Section V submission rules name no methylation assay.
- The 2010 and 2011 values match. Only the wording changes ("10X" to "10-fold", "processed" to "mapped").
- The current [data standards index](../sources/pages/data-standards.md) lists only WGBS under DNA methylation ([WGBS](wgbs/README.md)).

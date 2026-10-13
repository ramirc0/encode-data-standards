# Methyl27: ENCODE2

[Root](../README.md) / [DNA methylation](README.md) / Methyl27

Sources:

| Label | Document | Date | URL |
|---|---|---|---|
| 2010 | Chromatin and Transcription Factor Data Standards v1.0, section IV, 17 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating Chromatin and Transcription Factor Data". | Version 1.0, April 09, 2010 | [PDF](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) |
| 2011 | ChIP-seq, ChIP-chip, DNase-seq, FAIRE-seq and DNAme Standards v2.0, section IV, 20 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating ChIP, DNase, FAIRE, and DNA Methylation Genome Wide Location Data". | Version 2.0, July 20, 2011 | [PDF](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) |

Scope: Illumina Methyl27 arrays on human ENCODE cell lines. The protocol bisulfite-treats 1 μg of genomic DNA and hybridizes it to the array. Methylation levels come from "Illumina's Methyl27 technology" (2010) or "the manufacturer's recommendation" (2011). Both documents say the arrays have been used "since the beginning of the project" and will be used for all ENCODE cell lines.

## Array QC and concordance

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| [Biological replicates](../GLOSSARY.md#biological-replicate) | "Each method is performed on biological replicates to determine appropriate consistency measures" | stated | 2010 p8; 2011 p12 |
| Array QC | An initial call of at least 90% of "features" (2010) or "array probes" (2011) on each array | requirement | 2010 p8; 2011 p12 |
| Replicate concordance | 90% concordance in methylation levels across all CpGs that pass QC, for biological replicates of each cell line | required | 2010 p8; 2011 p12 |
| Agreement with [RRBS](rrbs.md) | On the same samples, overlapping CpGs show 70% concordance in methylation levels | considered to be in agreement | 2010 p8-9; 2011 p12 |

## Conflicts and gaps

- 2010 counts "features" and 2011 counts "array probes". The 2011 phrase "an initial call at least 90% of array probes" is missing a word. Neither document defines a call.
- Neither document defines "concordance" or how to compute it.
- Section V submission rules name no methylation assay.
- The 2010 and 2011 values match.
- The current [data standards index](../sources/pages/data-standards.md) lists only WGBS under DNA methylation ([WGBS](wgbs/README.md)).

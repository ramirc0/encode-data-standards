# Methyl-seq: ENCODE2

[Root](../README.md) / [DNA methylation](README.md) / Methyl-seq

Sources:

| Label | Document | Date | URL |
|---|---|---|---|
| 2010 | Chromatin and Transcription Factor Data Standards v1.0, section IV, 17 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating Chromatin and Transcription Factor Data". | Version 1.0, April 09, 2010 | [PDF](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) |
| 2011 | ChIP-seq, ChIP-chip, DNase-seq, FAIRE-seq and DNAme Standards v2.0, section IV, 20 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating ChIP, DNase, FAIRE, and DNA Methylation Genome Wide Location Data". | Version 2.0, July 20, 2011 | [PDF](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) |

Scope: Methyl-seq, a sequence census method that measures methylation at about 250,000 CpGs in the human genome. Genomic DNA is digested separately with MspI (methyl-insensitive) and HpaII (methyl-sensitive). Size-selected fragments from each digest are sequenced, and their read counts are compared.

Both documents say Methyl-seq "was discontinued as a standard ENCODE assay after RRBS was implemented". [RRBS](rrbs.md) measures at least twice as many CpGs and needs one sequencing lane instead of two. It is also more quantitative. The standards remain because several useful Methyl-seq datasets are in the ENCODE data releases.

## Depth and concordance

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| [Biological replicates](../GLOSSARY.md#biological-replicate) | "Each method is performed on biological replicates to determine appropriate consistency measures" | stated | 2010 p8; 2011 p12 |
| Aligned reads | 7 million or more for each biological replicate | required | 2010 p9; 2011 p13 |
| Replicate concordance | 80% concordance in methylation in regions assayed by both replicates | required | 2010 p9; 2011 p13 |
| HpaII and MspI agreement | 99% of the regions with HpaII reads have Msp1 reads | require | 2010 p9; 2011 p13 |

## Conflicts and gaps

- Both documents call Methyl-seq discontinued. Both still list required values, citing the useful datasets already released.
- The enzyme is "MspI" in the method text and "Msp1" in the 99% rule.
- The 7 million aligned reads per replicate do not say whether the MspI and HpaII digests count together.
- Neither document defines "concordance" or "regions".
- Section V submission rules name no methylation assay.
- The 2010 and 2011 values match.

# Bulk RNA-seq

[Root](../../README.md) / [Transcription](../README.md) / Bulk RNA-seq

RNA libraries with an average insert of about 200 bases or more. The data standards index uses these standards for total, poly(A)+ and poly(A)- RNA-seq, and for CRISPR, CRISPRi, shRNA and siRNA knockdown followed by RNA-seq.

| Leaf | Source | Status |
|---|---|---|
| [ENCODE4](encode4.md) | Bulk RNA-seq Data Standards and Processing Pipeline, May 2021 | Current |
| [ENCODE3](encode3.md) | Bulk RNA-seq Data Standards and Processing Pipeline, June 2017 | Previous |
| [Portal audits](portal-audits.md) | encoded audit code at `9bd8ff1` | Enforced |

Shared RNA leaves: [experimental guidelines](../experimental-guidelines.md) (January 2017) and [ENCODE2](../encode2.md) (2009 and 2011 standards).

## Changes between versions

The ENCODE3 and ENCODE4 pages share every threshold: 30 million aligned reads per replicate, Spearman > 0.9 (isogenic) and > 0.8 (anisogenic), 50 bp reads, ERCC spike-ins, and the variant-assay rules.

| Criterion | ENCODE3 | ENCODE4 |
|---|---|---|
| Assembly | GRCh38, hg19 or mm10 | GRCh38 or mm10 |
| Annotation | GENCODE V24, V19 or M4 | GENCODE V29 or M21 |
| Quantification | RSEM for genes and transcripts | RSEM for genes, kallisto for transcripts |
| Single-end libraries | Insert size range indicated | Also the mean fragment size and its SD or CV, for kallisto |

For ENCODE2 values (Pearson R², sequencing depth in reads) see the [ENCODE2 changes table](../encode2.md#changes-across-versions).

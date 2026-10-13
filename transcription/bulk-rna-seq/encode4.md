# Bulk RNA-seq: ENCODE4

[Root](../../README.md) / [Transcription](../README.md) / [Bulk RNA-seq](README.md) / ENCODE4

Source: [Bulk RNA-seq Data Standards and Processing Pipeline](https://www.encodeproject.org/data-standards/encode4-bulk-rna/), updated May 2021 ([snapshot](../../sources/pages/data-standards__encode4-bulk-rna.md)). The data standards index uses it for total RNA-seq, poly(A)+ RNA-seq, poly(A)- RNA-seq, CRISPR RNA-seq, CRISPRi RNA-seq, shRNA knockdown RNA-seq and siRNA knockdown RNA-seq.

Scope: libraries from poly(A)+, rRNA-depleted total RNA or poly(A)- RNA, size-selected to be longer than about 200 bp. Stranded or unstranded, single- or paired-end, replicated or not.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Definition | Average library insert size of 200 bp. The page overview says "greater than 200 bases". | stated |
| Replicates | 2 or more | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Spike-ins | [ERCC](https://www.encodeproject.org/references/ENCSR314WMD/) spike-ins in library preparation, concentrations in the metadata | should |
| Spike-in amount | The consortium standardizes on Ambion Mix 1 at about 2% of final mapped reads | stated |
| Experimental protocol | [Experimental guidelines](../experimental-guidelines.md) | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 50 bp minimum | should |
| Run type | Single- or paired-end, if specified and pairs are indicated | may |
| Platform | Any Illumina platform. Colorspace (SOLiD) is not supported. | stated |
| Barcodes | Indicated in the flowcell metadata, if present in the FASTQ | must |
| Library insert size | Range indicated. Single-end libraries quantified with kallisto must give the mean fragment size and its SD or CV. | must |
| Assembly | GRCh38 or mm10 | stated |
| Annotation | GENCODE V29 or M21 | stated |

## Read depth

[Aligned reads](../../GLOSSARY.md#read-depth-units) per replicate.

| Experiment type | Aligned reads per replicate | ENCODE wording |
|---|---|---|
| Bulk RNA-seq | 30 million; older projects aimed for 20 million | should |
| Single-cell isolation followed by RNA-seq | 5 million | requires only |
| shRNA knockdown or CRISPR genome editing followed by RNA-seq | 10 million | should |
| siRNA knockdown followed by RNA-seq | 10 million | should |

## Replicate concordance

Gene-level quantification, [Spearman](../../GLOSSARY.md#spearman-correlation) correlation.

| Replicate pair | Spearman | ENCODE wording |
|---|---|---|
| Isogenic | > 0.9 | should |
| Anisogenic (different donors) | > 0.8 | should |

The siRNA knockdown section repeats the same two cutoffs.

## Variant assays

| Assay | Rule | ENCODE wording |
|---|---|---|
| Single-cell isolation followed by RNA-seq | Run in sets of 10 to 20 experiments, which do not count as biological replicates | stated |
| Single-cell isolation followed by RNA-seq | A matching cell-equivalent control experiment | should |
| shRNA knockdown or CRISPR editing | The knockdown target is defined | must |
| shRNA knockdown or CRISPR editing | A matching control experiment | should |
| siRNA knockdown | A matching control experiment | should |
| siRNA knockdown | Percent knockdown of the target verified for each replicate against the control | should |

## Quantification guidance

Alignments and gene quantifications "can be used confidently". Transcript quantifications "should be used with care".

## Conflicts and gaps

- The insert size rule reads "average library insert size is 200 base pairs" in the standards and "greater than 200 bases" in the overview.
- The page names no read-depth or concordance tiers. See [portal audits](portal-audits.md).

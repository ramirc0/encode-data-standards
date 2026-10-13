# Bulk RNA-seq: ENCODE3

[Root](../../README.md) / [Transcription](../README.md) / [Bulk RNA-seq](README.md) / ENCODE3

Source: [Bulk RNA-seq Data Standards and Processing Pipeline](https://www.encodeproject.org/data-standards/rna-seq/long-rnas/), updated June 2017 ([snapshot](../../sources/pages/data-standards__rna-seq__long-rnas.md)). The data standards index links it as the previous ENCODE3 standards.

The thresholds match the [ENCODE4 page](encode4.md). The assemblies, annotations, aligners and kallisto rule differ.

Scope: libraries from poly(A)+, rRNA-depleted total RNA or poly(A)- RNA, size-selected to be longer than about 200 bp.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Definition | Average library insert size of 200 bp. The page overview says "greater than 200 bases". | stated |
| Replicates | 2 or more | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Spike-ins | [ERCC](https://www.encodeproject.org/references/ENCSR314WMD/) spike-ins in library preparation, concentrations in the metadata | should |
| Spike-in amount | The consortium standardizes on Ambion Mix 1 at about 2% of final mapped reads | stated |
| Experimental protocol | [Experimental guidelines](experimental-guidelines.md) | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 50 bp minimum | should |
| Run type | Single- or paired-end, if specified and pairs are indicated | may |
| Platform | Any Illumina platform. Colorspace (SOLiD) is not supported. | stated |
| Barcodes | Indicated in the flowcell metadata, if present in the FASTQ | must |
| Library insert size | Range indicated | must |
| Assembly | GRCh38, hg19 or mm10 | stated |
| Annotation | GENCODE V24, V19 or M4 | stated |

## Read depth

[Aligned reads](../../GLOSSARY.md#read-depth-units) per replicate.

| Experiment type | Aligned reads per replicate | ENCODE wording |
|---|---|---|
| Bulk RNA-seq | 30 million; older projects aimed for 20 million | should |
| Single-cell isolation followed by RNA-seq | 5 million | requires only |
| shRNA knockdown or CRISPR genome editing followed by RNA-seq | 10 million | should |
| siRNA knockdown followed by RNA-seq | 10 million | should |

ENCODE2 best practices are in [RNA Standards v1.0 (May 2011)](encode2.md).

## Replicate concordance

| Replicate pair | Gene-level [Spearman](../../GLOSSARY.md#spearman-correlation) | ENCODE wording |
|---|---|---|
| Isogenic | > 0.9 | should |
| Anisogenic (different donors) | > 0.8 | should |

## Variant assays

| Assay | Rule | ENCODE wording |
|---|---|---|
| Single-cell isolation followed by RNA-seq | Run in sets of 10 to 20 experiments, which do not count as biological replicates | stated |
| Single-cell isolation followed by RNA-seq | A matching cell-equivalent control experiment | should |
| shRNA knockdown or CRISPR editing | The knockdown target is defined | must |
| shRNA knockdown or CRISPR editing | A matching control experiment | should |
| siRNA knockdown | A matching control experiment | should |
| siRNA knockdown | Percent knockdown of the target verified for each replicate against the control | should |

## Conflicts and gaps

- The insert size rule reads "average library insert size is 200 base pairs" in the standards and "greater than 200 bases" in the overview.
- The page names no read-depth or concordance tiers. See [portal audits](../portal-audits.md).

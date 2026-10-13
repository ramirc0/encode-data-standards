# WGBS: ENCODE3

[Root](../../README.md) / [DNA methylation](../README.md) / [WGBS](README.md) / ENCODE3

Source: [Whole-Genome Bisulfite Sequencing Data Standards and Processing Pipeline](https://www.encodeproject.org/data-standards/wgbs/), updated June 2017 ([snapshot](../../sources/pages/data-standards__wgbs.md)). This pipeline used Bismark and Bowtie, with separate paired-end and single-end versions.

The thresholds match the [ENCODE4 page](encode4.md). Only the pipeline and its outputs differ.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Biological replicates | 2 or more. Each may have 2 technical replicates. | should; may |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Experimental protocol | [Experimental guidelines](experimental-guidelines.md) | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| [Coverage](../../GLOSSARY.md#read-depth-units) | 30X per replicate | should |
| Read length | 100 bp minimum | should |
| Run type | Single- or paired-end, if the type is specified and pairs are indicated | may |
| Platform | Indicated | must |
| Barcodes | Indicated, if present in the FASTQ | must |
| Control genome | The pipeline maps reads against the lambda phage genome as a control | stated |
| Assembly | GRCh38 or mm10 | stated |

## Conversion and concordance

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| C to T conversion rate | ≥ 98% | should |
| CpG quantification, [Pearson](../../GLOSSARY.md#pearson-correlation) between replicates | ≥ 0.8, for sites with ≥ 10X coverage | should |

## Conflicts and gaps

- The page gives a 30X target but no lower tiers. The [audits page](../portal-audits.md) defines low, insufficient and extremely low coverage.

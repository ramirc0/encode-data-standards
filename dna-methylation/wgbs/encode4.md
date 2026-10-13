# WGBS: ENCODE4

[Root](../../README.md) / [DNA methylation](../README.md) / [WGBS](README.md) / ENCODE4

Source: [Whole-Genome Bisulfite Sequencing Data Standards and gemBS-based Processing Pipeline](https://www.encodeproject.org/data-standards/wgbs-encode4/), updated May 2021 ([snapshot](../../sources/pages/data-standards__wgbs-encode4.md)). The data standards index lists it as "WGBS (ENCODE 4)". The pipeline uses gemBS for alignment and methylation extraction.

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

- The page gives a 30X target but no lower tiers. The [portal audits](portal-audits.md) add low, insufficient and extremely low coverage tiers.
- [Hitz et al. 2023](https://doi.org/10.1101/2023.04.04.535623) (p12) computes the replicate correlation on CpG sites "with greater than 10x coverage". The page says "≥10X".

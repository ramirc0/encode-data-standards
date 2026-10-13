# RAMPAGE and CAGE: standards

[Root](../../README.md) / [Transcription](../README.md) / [RAMPAGE and CAGE](README.md) / Standards

Source: [RAMPAGE and CAGE Data Standards and Processing Pipeline](https://www.encodeproject.org/data-standards/rampage/), updated June 2017 ([snapshot](../../sources/pages/data-standards__rampage.md)). The page states no ENCODE phase. Its annotations (GENCODE V24 and M4) match the ENCODE3 pipelines.

Scope: TSS-mapping libraries from rRNA-depleted total RNA longer than 200 nucleotides. One pipeline serves RAMPAGE and CAGE. The standards section is titled "Current Standards (RAMPAGE)".

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Replicates | At least 2 | should |
| Replicates for IDR | Exactly 2 | must |
| RNA-seq control | A matching RNA-seq experiment as a control for each RAMPAGE or CAGE experiment | must (restrictions); should (standards) |
| Experimental protocol | [Experimental guidelines](../experimental-guidelines.md) cover RAMPAGE and CAGE | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Run type | Paired-end | must |
| Read length | 50 bp minimum | should |
| Platform | Any Illumina platform. Colorspace (SOLiD) is not supported. | stated |
| Barcodes and [spike-ins](https://www.encodeproject.org/references/ENCSR704RSS/) | Indicated, if present in the FASTQ | must |
| Library insert size | Range indicated | must |
| Assembly | GRCh38 or mm10 | stated |
| Annotation | GENCODE V24 or M4 | stated |

## Depth and concordance

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| [Aligned reads](../../GLOSSARY.md#read-depth-units) per replicate | 20 million; older projects aimed for 10 million | should |
| Gene-level [Spearman](../../GLOSSARY.md#spearman-correlation), isogenic replicates | > 0.9 | should |
| Gene-level Spearman, anisogenic replicates | > 0.8 | should |

The pipeline compares the two TSS quantification files, "calculating the Mean Absolute Deviation and correlations".

## Conflicts and gaps

- The standards are written for RAMPAGE. The page states no separate depth or concordance values for CAGE.
- The page calls the replicate metric "Mean Absolute Deviation". The [MAD page](../../GLOSSARY.md#mad) and Figure 5D of [Hitz et al. 2023](https://doi.org/10.1101/2023.04.04.535623) call it Median Absolute Deviation.
- The page names no tiers. See [portal audits](portal-audits.md).

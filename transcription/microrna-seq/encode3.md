# microRNA-seq: ENCODE3

[Root](../../README.md) / [Transcription](../README.md) / [microRNA-seq](README.md) / ENCODE3

Source: [microRNA-seq Data Standards and Processing Pipeline](https://www.encodeproject.org/microrna/microrna-seq/), updated May 2017 ([snapshot](../../sources/pages/microrna__microrna-seq.md)). The previous-guidelines page lists it as "microRNA-seq (ENCODE 3)".

Scope: microRNA libraries size-selected from total RNA to 30 bp or smaller.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Insert size | Average insert size no more than 30 bases | must |
| Insert size metadata | Library insert size range < 30 and indicated in the metadata | must |
| Replicates | 2 or more | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Mapped read length | 16 bp minimum | should |
| Run type | Single-end | should |
| Platform | Any Illumina platform. Colorspace (SOLiD) is not supported. | stated |
| Assembly | GRCh38 or mm10 | stated |
| Annotation | GENCODE V24 or M4 | stated |

## Depth and concordance

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| [Aligned reads](../../GLOSSARY.md#read-depth-units) per replicate | 2 million minimum | should |
| Gene-level [Pearson](../../GLOSSARY.md#pearson-correlation) correlation | ≥ 0.85 | should |

## Conflicts and gaps

- ENCODE4 switched the concordance metric from Pearson to Spearman and the depth unit from aligned reads to reads mapped to the miRNA subset. See the [assay index](README.md).
- The page names no tiers. See [portal audits](../portal-audits.md).

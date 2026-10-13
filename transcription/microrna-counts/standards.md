# microRNA counts: standards

[Root](../../README.md) / [Transcription](../README.md) / [microRNA counts](README.md) / Standards

Source: [microRNA Counts Data Standards and Processing Pipeline](https://www.encodeproject.org/microrna/microrna-counts/), updated May 2017 ([snapshot](../../sources/pages/microrna__microrna-counts.md)). The page states no ENCODE phase.

Scope: NanoString nCounter miRNA Reporter Code Count (RCC) data for human and mouse.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Replicates | 2 or more | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Inputs

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Data type | All NanoString nCounter miRNA RCC files for human and mouse are supported | stated |
| Assembly | Normalized counts in BED map to GRCh38 or mm10 | stated |
| Annotation | miRBase V21 | stated |

## Concordance

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Normalized counts of the two biological replicates, [Pearson](../../GLOSSARY.md#pearson-correlation) | ≥ 0.90 | should |

## Normalization

nSolver Analysis Software v2.5 processes the raw counts:

1. Subtract the maximum background level (negative controls) from the sample counts.
2. Normalize by the geometric means of the positive controls and the top 100 expressed miRNAs.

The data use the Human v2.1 and Mouse v1.2, v1.3 and v1.5 platforms.

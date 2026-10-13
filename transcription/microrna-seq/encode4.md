# microRNA-seq: ENCODE4

[Root](../../README.md) / [Transcription](../README.md) / [microRNA-seq](README.md) / ENCODE4

Source: [microRNA-seq Data Standards and Processing Pipeline (E4)](https://www.encodeproject.org/microrna/microrna-seq-encode4/), dated "Updated May 2017" ([snapshot](../../sources/pages/microrna__microrna-seq-encode4.md)). The data standards index lists it as "microRNA-seq (ENCODE 4)".

Scope: microRNA libraries size-selected from total RNA to 30 bp or smaller.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Insert size | Average insert size no more than 30 bases | must |
| Size selection | Gel size selection of fragments with insert length < 30 | stated |
| Replicates | 2 or more | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Mapped read length | 16 bp minimum | should |
| Run type | Single-end libraries. For paired-end input the pipeline processes read 1 only. | stated |
| Platform | Any Illumina platform. Colorspace (SOLiD) is not supported. | stated |
| Adapters | 3' and 5' adapters trimmed before alignment (Cutadapt 1.7.1 for the data on the portal) | stated |
| Assembly | GRCh38 or mm10 | stated |
| Annotation | GENCODE V29 or M21. STAR indexes the comprehensive annotation and counts against its miRNA subset. | stated |

## Graded metrics

| Status | Sequencing depth | Replicate concordance, Spearman | microRNAs expressed |
|---|---|---|---|
| Good | ≥ 5 million reads mapped to the miRNA subset of the genome (unique + multimap < 10) | ≥ 0.85 | ≥ 300 miRNAs at ≥ 2 CPM per replicate |
| Acceptable | 3-5 million such reads in either replicate | 0.8-0.84 | 200-300 miRNAs at ≥ 2 CPM in either replicate |
| Poor | < 3 million such reads in either replicate | < 0.8 | < 200 miRNAs at ≥ 2 CPM in either replicate |

The footnote on the Acceptable and Poor miRNA counts reads:

> Exemptions may be made for samples with higher concordance (Spearman correlation > 0.85) or deeper sequencing depth (> 5M) in the case of EN-TEx samples with one replicate, or in the case of known low gene counts from short RNA-seq data obtained from the same cell line/tissue which has passed ENCODE standards.

## Conflicts and gaps

- Spearman values between 0.84 and 0.85 fall in no tier.
- The page is dated May 2017 but uses the ENCODE4 annotations (GENCODE V29 and M21).

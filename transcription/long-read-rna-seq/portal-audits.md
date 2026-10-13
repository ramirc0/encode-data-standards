# Long-read RNA-seq: portal audits

[Root](../../README.md) / [Transcription](../README.md) / [Long-read RNA-seq](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses run by `Long read RNA-seq pipeline` on GRCh38 or mm10, with one dataset and one pipeline. There is no replication gate. A tier fires only when the metric is truthy, so a value of 0 or a missing key raises nothing. All rules use `analysis.py:check_replicate_metric_dual_threshold:270-287`.

| Flag | Level | Condition | Metric |
|---|---|---|---|
| borderline replicate concordance | WARNING | `spearman < 0.8` | CorrelationQualityMetric "Spearman correlation" on transcript quantifications |
| insufficient replicate concordance | NOT_COMPLIANT | `spearman < 0.6` | same |
| borderline sequencing depth | WARNING | `full_length_non_chimeric_read_count < 600000` | LongReadRnaMappingQualityMetric on unfiltered alignments |
| insufficient sequencing depth | NOT_COMPLIANT | `full_length_non_chimeric_read_count < 400000` | same |
| borderline mapping rate | WARNING | `mapping_rate < 0.9` (a proportion) | LongReadRnaMappingQualityMetric |
| insufficient mapping rate | NOT_COMPLIANT | `mapping_rate < 0.6` | same |
| borderline genes detected | WARNING | `genes_detected < 8000` | LongReadRnaQuantificationQualityMetric on transcript quantifications |
| insufficient genes detected | NOT_COMPLIANT | `genes_detected < 4000` | same |

Long-read experiments get no read-length audit. They are exempt from `missing RNA fragment size` but still need a RIN.

## Differences from the published standards

- The [page](standards.md) tiers match these cutoffs. Values equal to an edge (600,000; 0.9; 0.8; 8,000) pass, which settles the page's overlapping edges in favor of Good.
- Not audited: the 300 bp read-length minimum and the short-read exemption for low gene counts.

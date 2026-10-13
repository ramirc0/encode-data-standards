# microRNA-seq: portal audits

[Root](../../README.md) / [Transcription](../README.md) / [microRNA-seq](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses run by `microRNA-seq pipeline` on GRCh38 or mm10, with one dataset and one pipeline. There is no replication gate. A tier fires only when the metric is truthy, so a value of 0 or a missing key raises nothing. All rules use `analysis.py:check_replicate_metric_dual_threshold:270-287`.

| Flag | Level | Condition | Metric |
|---|---|---|---|
| borderline replicate concordance | WARNING | `spearman < 0.85` | CorrelationQualityMetric "Spearman correlation" on microRNA quantifications |
| insufficient replicate concordance | NOT_COMPLIANT | `spearman < 0.8` | same |
| borderline number of aligned reads | WARNING | `aligned_reads < 5000000` | MicroRnaMappingQualityMetric `aligned_reads` |
| insufficient number of aligned reads | NOT_COMPLIANT | `aligned_reads < 3000000` | same |
| borderline microRNAs expressed | WARNING | `expressed_mirnas < 300` | MicroRnaQuantificationQualityMetric `expressed_mirnas` |
| insufficient microRNAs expressed | NOT_COMPLIANT | `expressed_mirnas < 200` | same |

A 30 bp read-length check exists but has no caller (experiment.py:check_experiment_micro_rna_standards:925-929).

## Differences from the published standards

- The [ENCODE4 page](encode4.md) tiers match these cutoffs.
- The [ENCODE3 page](encode3.md) set 2 million aligned reads and Pearson ≥ 0.85. The code applies the ENCODE4 tiers (5 and 3 million, Spearman 0.85 and 0.8) to every `microRNA-seq pipeline` analysis.
- Not audited: the 16 bp mapped read length, single-end sequencing, the < 30 insert size, and the EN-TEx and low-gene-count exemptions.

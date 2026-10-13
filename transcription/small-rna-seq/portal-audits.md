# Small RNA-seq: portal audits

[Root](../../README.md) / [Transcription](../README.md) / [Small RNA-seq](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses run by `Small RNA-seq single-end pipeline` on GRCh38 or mm10, with one dataset and one pipeline. Depth is StarQualityMetric `read_depth` (unique plus multi-mapped reads).

| Flag | Level | Condition | Location |
|---|---|---|---|
| low read depth | WARNING | `20000000 <= read_depth < 30000000` | analysis.py:check_file_read_depth:112-113 |
| insufficient read depth | NOT_COMPLIANT | `1000000 <= read_depth < 20000000` | analysis.py:check_file_read_depth:114-116 |
| extremely low read depth | ERROR | `read_depth < 1000000` | analysis.py:check_file_read_depth:117-119 |
| low replicate concordance | WARNING | `spearman < 0.9` (isogenic) or `spearman < 0.8` (anisogenic), replicated data only | analysis.py:check_spearman:132-159 |
| insufficient read length | NOT_COMPLIANT | `read_length < 50` on fastqs | experiment.py:check_file_read_length_rna:1082-1094 |

The `missing read depth` paths call helpers with too few arguments and would raise an error if reached (analysis.py:check_analysis_small_rna_standards:1440-1444). A single-end run-type check exists but has no caller (experiment.py:check_experiment_small_rna_standards:867-876).

## Differences from the published standards

- Depth: the [page](standards.md) accepts 10 million aligned reads for older projects. The code flags 10 to 20 million as NOT_COMPLIANT.
- Run type: the page requires single-end sequencing. No live audit checks it.
- EN-TEx: the page allows an EN-TEx exemption. The code has none.

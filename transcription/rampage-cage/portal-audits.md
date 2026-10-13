# RAMPAGE and CAGE: portal audits

[Root](../../README.md) / [Transcription](../README.md) / [RAMPAGE and CAGE](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses run by `RAMPAGE or CAGE (paired-end)` on GRCh38 or mm10, with one dataset and one pipeline. Depth is StarQualityMetric `read_depth` (unique plus multi-mapped reads).

| Flag | Level | Condition | Location |
|---|---|---|---|
| low read depth | WARNING | `10000000 <= read_depth < 20000000` | analysis.py:check_file_read_depth:112-113 |
| insufficient read depth | NOT_COMPLIANT | `1000000 <= read_depth < 10000000` | analysis.py:check_file_read_depth:114-116 |
| extremely low read depth | ERROR | `read_depth < 1000000` | analysis.py:check_file_read_depth:117-119 |
| low replicate concordance | WARNING | `spearman < 0.9` (isogenic) or `spearman < 0.8` (anisogenic), replicated data only | analysis.py:check_spearman:132-159 |
| insufficient read length | NOT_COMPLIANT | `read_length < 50`, only when a BAM carries the title `RAMPAGE (paired-end, stranded)` | experiment.py:check_file_read_length_rna:1082-1094 |
| missing possible_controls | NOT_COMPLIANT | no possible controls, for every award. The control's assay is not checked. | experiment.py:audit_experiment_control:2144-2161 |

The `missing read depth` paths call helpers with the wrong number of arguments and would raise an error if reached. A paired-end run-type check exists but has no caller. RAMPAGE `low read count` warns below 10000000 raw reads per replicate for `in progress` experiments. CAGE has no entry. Files must name `controlled_by`.

## Differences from the published standards

- Depth: the [page](standards.md) sets 20 million aligned reads (10 million for older projects). The code adds an ERROR tier below 1 million.
- Not audited: paired-end sequencing, the exactly-two-replicates rule for IDR, and that the control is an RNA-seq experiment.
- The read-length audit and the analysis audit expect different pipeline titles. Which titles production data carry is not in the repository.

# DNase-seq: portal audits

[Root](../../README.md) / [DNA accessibility](../README.md) / [DNase-seq](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses run by the ENCODE4 `DNase-seq pipeline` or the ENCODE3 `DNase-HS pipeline` (single-end or paired-end, Version 2). Both generations share one set of thresholds. hg19 analyses are skipped. The rules also cover genetic modification followed by DNase-seq.

## Depth, enrichment and concordance

| Flag | Level | Condition | Metric | Location |
|---|---|---|---|---|
| low read depth | WARNING | `20000000 <= mapped < 50000000` | SamtoolsFlagstatsQualityMetric `mapped` on alignments (reads, not halved) | analysis.py:check_analysis_dnase_seq_standards:704-705 |
| extremely low read depth | ERROR | `mapped < 20000000` | same | analysis.py:check_analysis_dnase_seq_standards:706-707 |
| missing read depth | INTERNAL_ACTION | alignments exist and none has a SamtoolsFlagstatsQualityMetric | same | analysis.py:check_analysis_dnase_seq_standards:708-721 |
| low spot score | WARNING | `0.25 <= spot1_score < 0.4` | HotspotQualityMetric `spot1_score` | analysis.py:check_analysis_dnase_seq_standards:762-763 |
| extremely low spot score | ERROR | `spot1_score < 0.25` | same | analysis.py:check_analysis_dnase_seq_standards:764-765 |
| insufficient replicate concordance | NOT_COMPLIANT | `Pearson correlation < 0.9`, or `< 0.85` when `replication_type` is `anisogenic`. Skipped when unreplicated. | CorrelationQualityMetric on `read-depth normalized signal` files | analysis.py:check_analysis_dnase_seq_standards:767-799 |
| missing footprints | ERROR | no `footprints` file, ENCODE4 pipeline | File.output_type | analysis.py:audit_dnase_footprints:624-648 |
| missing footprints | WARNING | a footprints file reports `footprint_count == 0` | DnaseFootprintingQualityMetric | analysis.py:audit_dnase_footprints:634-655 |

## Reads and analysis currency

| Flag | Level | Condition | Location |
|---|---|---|---|
| insufficient read length | NOT_COMPLIANT | `read_length < 36` on fastqs. Needs a GRCh38 or mm10 pipeline BAM. | experiment.py:check_file_read_length_rna:1082-1094 |
| missing read_length | NOT_COMPLIANT | the fastq has no `read_length` | experiment.py:check_file_read_length_rna:1075-1081 |
| out of date analysis | INTERNAL_ACTION | a pipeline BAM's inputs no longer match the replicate's fastqs | experiment.py:audit_experiment_out_of_date_analysis:529-550 |

Assay-agnostic rules with DNase values: `mixed read lengths` tolerates 9 bp instead of 2. `inconsistent platforms` skips DNase assays. `low read count` warns below 20000000 raw reads per biological replicate for `in progress` experiments. Genetic modification followed by DNase-seq is exempt from `unreplicated experiment`. See [assay-agnostic audits](../../audits/README.md#assay-agnostic-audits).

## Differences from the published standards

- SPOT: the [pages](encode4.md) mark < 0.3 for replacement and call 0.3 to 0.4 Acceptable. The code has no tier at 0.3 and no NOT_COMPLIANT tier. 0.25 to 0.4 is WARNING and below 0.25 is ERROR.
- Depth: the 20 million minimum is ERROR, with no NOT_COMPLIANT tier. The 100 million footprinting depth and the 150-200 million deep-profile depth are not audited.
- Not audited: mitochondrial fraction, mappability, duplicate rate, and the TALEN homozygous and heterozygous replicate rule.
- Concordance: the code reads the Pearson correlation of signal files, while the pages name "gene level quantification". Values equal to 0.9 or 0.85 pass.
- EN-TEx: the pages allow EN-TEx and rare-sample exemptions. The code has none.

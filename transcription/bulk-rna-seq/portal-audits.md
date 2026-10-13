# Bulk RNA-seq: portal audits

[Root](../../README.md) / [Transcription](../README.md) / [Bulk RNA-seq](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses run by `RNA-seq of long RNAs (paired-end, stranded)`, `RNA-seq of long RNAs (single-end, unstranded)` or `Bulk RNA-seq` on GRCh38 or mm10. This covers RNA-seq, poly(A)+ and poly(A)- RNA-seq, the shRNA, siRNA, CRISPR and CRISPRi variants, and single-cell isolation followed by RNA-seq (`single-cell RNA sequencing assay`).

Depth is StarQualityMetric `read_depth`, which equals `Uniquely mapped reads number` plus `Number of reads mapped to multiple loci`. It is read from the pipeline's non-TopHat alignments.

## Read depth

| Assays | Flag | Level | Condition | Location |
|---|---|---|---|---|
| Bulk RNA-seq | low read depth | WARNING | `20000000 <= read_depth < 30000000` | analysis.py:check_file_read_depth:112-113 |
| Bulk RNA-seq | insufficient read depth | NOT_COMPLIANT | `1000000 <= read_depth < 20000000` | analysis.py:check_file_read_depth:114-116 |
| Bulk RNA-seq | extremely low read depth | ERROR | `read_depth < 1000000` | analysis.py:check_file_read_depth:117-119 |
| shRNA, siRNA, CRISPRi, CRISPR genome editing followed by RNA-seq | insufficient read depth | NOT_COMPLIANT | `1000000 <= read_depth < 10000000` | analysis.py:check_file_read_depth:114-116 |
| same | extremely low read depth | ERROR | `read_depth < 1000000` | analysis.py:check_file_read_depth:117-119 |
| Single-cell isolation followed by RNA-seq | insufficient read depth | NOT_COMPLIANT | `500000 <= read_depth < 5000000` | analysis.py:check_file_read_depth:114-116 |
| same | extremely low read depth | ERROR | `read_depth < 500000` | analysis.py:check_file_read_depth:117-119 |
| All | missing read depth | INTERNAL_ACTION | a StarQualityMetric lacks `read_depth`, or no StarQualityMetric exists | analysis.py:audit_missing_read_depth:1296-1304; audit_missing_star_quality_metric:1307-1316 |

The knockdown and single-cell tiers have no WARNING band.

## Replicate concordance

MadQualityMetric "Spearman correlation" on gene quantifications. Single-cell isolation is exempt.

| Flag | Level | Condition | Location |
|---|---|---|---|
| low replicate concordance | WARNING | `spearman < 0.9` (isogenic) or `spearman < 0.8` (anisogenic) | analysis.py:check_spearman:132-159 |
| low replicate concordance | WARNING | `spearman < 0.9` between technical replicates of an unreplicated dataset | analysis.py:check_spearman_technical_replicates:170-188 |

## Reads, platform and spike-ins

| Flag | Level | Condition | Location |
|---|---|---|---|
| insufficient read length | NOT_COMPLIANT | `read_length < 50` on fastqs. Needs a GRCh38 or mm10 pipeline BAM. | experiment.py:check_file_read_length_rna:1082-1094 |
| missing read_length | NOT_COMPLIANT | the fastq has no `read_length` | experiment.py:check_file_read_length_rna:1075-1081 |
| not compliant platform | WARNING | platform is SOLiD (`OBI:0002024`, `OBI:0000696`). The test compares an object with strings and appears never to fire. | experiment.py:check_file_platform:1028-1038 |
| missing spikeins | NOT_COMPLIANT | a long-fragment library has no spike-ins | experiment.py:check_experiment_ERCC_spikeins:1014-1024; audit_experiment_spikeins:2369-2379 |
| missing spikeins | WARNING | a long-fragment library lists spike-ins, but not the ERCC file `/files/ENCFF001RTP/` (`/files/ENCFF001RTO/` for single-cell) | experiment.py:check_experiment_ERCC_spikeins:983-1013 |

A library counts as long-fragment when `size_range == '>200'`, or else when `average_fragment_size > 200`.

## Variant assays

- shRNA, siRNA, CRISPR genome editing and CRISPRi followed by RNA-seq need a target (`missing target`, ERROR) and a control (`missing possible_controls`, ERROR). They need no antibody.
- `low read count` warns below 10000000 raw reads per replicate for shRNA, siRNA and CRISPR genome editing (`in progress` experiments). CRISPRi has no entry.
- Single-cell isolation is exempt from `unreplicated experiment`, from the Spearman audit and, for ENCODE3 and ENCODE4 awards, from `missing possible_controls`.

RNA library audits (`missing RNA fragment size`, `missing RIN`) are under [assay-agnostic audits](../../audits/README.md#rna-library-metadata).

## Differences from the published standards

- Depth: the [pages](encode4.md) set 30 million aligned reads with no lower tiers. The code adds an ERROR tier below 1 million. The knockdown and single-cell rules gain ERROR tiers the pages lack.
- Single-cell isolation: the pages require a cell-equivalent control. The code exempts ENCODE3 and ENCODE4 experiments.
- Insert size: the pages define bulk as a 200 bp average insert. The spike-in audit treats a library as long only above 200 bp.
- Concordance: values equal to 0.9 or 0.8 pass.
- Not audited: percent knockdown for siRNA, the GENCODE annotation version, and EN-TEx exemptions.

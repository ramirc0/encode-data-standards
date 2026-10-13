# ChIP-seq: portal audits

[Root](../../README.md) / [DNA binding](../README.md) / [ChIP-seq](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses that include `ChIP-seq read mapping`, `Histone ChIP-seq 2`, `Transcription factor ChIP-seq 2` or their unreplicated versions, on GRCh38, hg19, mm10 or mm9. Worm and fly assemblies get the modERN rules. Target class comes from each target's `investigated_as`: `broad histone mark` first, then `narrow histone mark`, and every other target gets the TF tiers.

Read depth is "usable fragments": `total_reads` (ChipAlignmentQualityMetric) or `total` (SamtoolsFlagstatsQualityMetric) on filtered alignments, [halved for paired-end data](../../audits/README.md#how-to-read-the-conditions).

## Read depth by target class

| Target class | Flag | Level | Condition | Location |
|---|---|---|---|---|
| TF and other non-histone targets | low read depth | WARNING | `10000000 <= read_depth < 20000000` | analysis.py:check_file_chip_seq_read_depth:1227-1228 |
| TF and other non-histone targets | insufficient read depth | NOT_COMPLIANT | `5000000 <= read_depth < 10000000` | analysis.py:check_file_chip_seq_read_depth:1229-1231 |
| TF and other non-histone targets | extremely low read depth | ERROR | `read_depth < 5000000` | analysis.py:check_file_chip_seq_read_depth:1232-1234 |
| Narrow histone mark | low read depth | WARNING | `10000000 <= read_depth < 20000000` | analysis.py:check_file_chip_seq_read_depth:1207-1208 |
| Narrow histone mark | insufficient read depth | NOT_COMPLIANT | `5000000 <= read_depth < 10000000` | analysis.py:check_file_chip_seq_read_depth:1209-1211 |
| Narrow histone mark | extremely low read depth | ERROR | `read_depth < 5000000` | analysis.py:check_file_chip_seq_read_depth:1212-1214 |
| Broad histone mark | low read depth | WARNING | `35000000 <= read_depth < 45000000` | analysis.py:check_file_chip_seq_read_depth:1189-1190 |
| Broad histone mark | insufficient read depth | NOT_COMPLIANT | `5000000 <= read_depth < 35000000` | analysis.py:check_file_chip_seq_read_depth:1191-1192 |
| Broad histone mark | extremely low read depth | ERROR | `read_depth < 5000000` | analysis.py:check_file_chip_seq_read_depth:1193-1194 |
| Any | missing read depth | INTERNAL_ACTION | no qualifying quality metric | analysis.py:check_file_chip_seq_read_depth:1093-1100 |

The TF tiers also apply to control datasets whose `control_type` is not `input library` (IgG, mock input, wild type and others).

### H3K9me3

H3K9me3 depth is mapped reads (`mapped_reads` or `mapped`) on unfiltered alignments, halved for paired-end data. No biosample-type condition exists.

| Flag | Level | Condition | Location |
|---|---|---|---|
| low read depth | WARNING | `35000000 <= read_depth < 45000000` | analysis.py:check_file_chip_seq_read_depth:1158-1171 |
| insufficient read depth | NOT_COMPLIANT | `100 <= read_depth < 35000000` | analysis.py:check_file_chip_seq_read_depth:1172-1173 |
| extremely low read depth | ERROR | `read_depth < 100` (100 reads, as written) | analysis.py:check_file_chip_seq_read_depth:1174-1175 |

## Library complexity

Any metric on the filtered BAM with `NRF`, `PBC1` or `PBC2` keys (ChipLibraryQualityMetric in ENCODE4, ChipSeqFilterQualityMetric in ENCODE3 and modERN).

| Flag | Level | Condition | Location |
|---|---|---|---|
| poor library complexity | NOT_COMPLIANT | `NRF < 0.5` | analysis.py:check_file_chip_seq_library_complexity:980-982 |
| moderate library complexity | WARNING | `0.5 <= NRF < 0.8` | analysis.py:check_file_chip_seq_library_complexity:983-985 |
| severe bottlenecking | NOT_COMPLIANT | `PBC1 < 0.5` | analysis.py:check_file_chip_seq_library_complexity:994-996 |
| mild to moderate bottlenecking | WARNING | `0.5 <= PBC1 < 0.9` | analysis.py:check_file_chip_seq_library_complexity:997-999 |
| severe bottlenecking | NOT_COMPLIANT | `PBC2 < 1` (`'Infinity'` counts as infinite) | analysis.py:check_file_chip_seq_library_complexity:1001-1014 |
| mild to moderate bottlenecking | WARNING | `1 <= PBC2 < 10` | analysis.py:check_file_chip_seq_library_complexity:1015-1017 |

## Replicate concordance and enrichment

| Flag | Level | Condition | Applies to | Location |
|---|---|---|---|---|
| insufficient replicate concordance | NOT_COMPLIANT | `rescue_ratio > 2 and self_consistency_ratio > 2` | `optimal IDR thresholded peaks`, or `IDR thresholded peaks` marked `preferred_default`. Skipped when `replication_type` is `unreplicated` or absent. Histone `replicated peaks` are never checked. | analysis.py:check_idr:208-229 |
| borderline replicate concordance | WARNING | exactly one of the two ratios `> 2` | same | analysis.py:check_idr:230-248 |
| negative NSC, negative RSC | ERROR | `NSC < 0` or `RSC < 0` | ChipAlignmentEnrichmentQualityMetric; not run for modERN | analysis.py:negative_coefficients:194-203 |

## Read length and runs

Applies to ChIP-seq and Mint-ChIP-seq fastqs of human and mouse experiments, all targets and controls.

| Flag | Level | Condition | Location |
|---|---|---|---|
| low read length | WARNING | `36 <= read_length < 50` | experiment.py:check_file_read_length_chip:1069-1070 |
| insufficient read length | NOT_COMPLIANT | `26 <= read_length < 36` | experiment.py:check_file_read_length_chip:1067-1068 |
| extremely low read length | ERROR | `read_length < 26` | experiment.py:check_file_read_length_chip:1065-1066 |
| missing read_length | NOT_COMPLIANT | the fastq has no `read_length` | experiment.py:check_file_read_length_chip:1046-1052 |
| mixed run types | WARNING | more than one `run_type` in a biological replicate, or different sets between biological replicates | experiment.py:audit_experiment_consistent_sequencing_runs:1377-1420 |
| inconsistent mapped reads lengths | INTERNAL_ACTION | `max - min >= 7` over the mapped read lengths behind a peaks file | experiment.py:audit_experiment_mapped_read_length:2861-2873 |
| missing unfiltered alignments | INTERNAL_ACTION | a pipeline filtered BAM has no matching unfiltered BAM | experiment.py:audit_experiment_missing_unfiltered_bams:489-509 |

## Controls

Two code paths judge control depth with different tiers.

Control analysis (`analysis.py`), for each BAM of an `input library` control's own analysis, whatever the treated target:

| Flag | Level | Condition | Location |
|---|---|---|---|
| insufficient read depth for broad peaks control | INTERNAL_ACTION | `20000000 <= read_depth < 45000000` | analysis.py:check_file_chip_seq_read_depth:1116-1131 |
| low read depth | WARNING | `10000000 <= read_depth < 20000000` | analysis.py:check_file_chip_seq_read_depth:1132-1150 |
| insufficient read depth | NOT_COMPLIANT | `5000000 <= read_depth < 10000000` | analysis.py:check_file_chip_seq_read_depth:1151-1153 |
| extremely low read depth | ERROR | `read_depth < 5000000` | analysis.py:check_file_chip_seq_read_depth:1151-1156 |

Treated experiment (`experiment.py`), summing the control BAMs behind each pipeline peaks file, using the treated target's class:

| Treated target | Flag | Level | Condition | Location |
|---|---|---|---|---|
| Broad histone mark | control low read depth | WARNING | `35000000 <= depth < 45000000` | experiment.py:check_control_read_depth_standards:390-391 |
| Broad histone mark | control insufficient read depth | NOT_COMPLIANT | `5000000 <= depth < 35000000` | experiment.py:check_control_read_depth_standards:392-393 |
| Broad histone mark | control extremely low read depth | ERROR | `depth < 5000000` | experiment.py:check_control_read_depth_standards:394-395 |
| Narrow histone mark | control low read depth | WARNING | `10000000 <= depth < 20000000` | experiment.py:check_control_read_depth_standards:406-407 |
| Narrow histone mark | control insufficient read depth | NOT_COMPLIANT | `5000000 <= depth < 10000000` | experiment.py:check_control_read_depth_standards:408-409 |
| Narrow histone mark | control extremely low read depth | ERROR | `depth < 5000000` | experiment.py:check_control_read_depth_standards:410-411 |
| TF and others | control low read depth | WARNING | `10000000 <= depth < 20000000` | experiment.py:check_control_read_depth_standards:422-423 |
| TF and others | control insufficient read depth | NOT_COMPLIANT | `5000000 <= depth < 10000000` | experiment.py:check_control_read_depth_standards:424-425 |
| TF and others | control extremely low read depth | ERROR | `depth < 5000000` | experiment.py:check_control_read_depth_standards:426-427 |

Control presence and type:

| Flag | Level | Condition | Location |
|---|---|---|---|
| missing input control | NOT_COMPLIANT | no possible control with `control_type` `input library`. Tagged experiments may use `wild type` instead. ENCODE3, ENCODE4 and Roadmap only. | experiment.py:audit_experiment_ChIP_control:2307-2339 |
| invalid possible_control | ERROR | a possible control experiment has no `control_type` | experiment.py:audit_experiment_ChIP_control:2287-2296 |
| missing control alignments | ERROR | a pipeline peaks file derives from no qualifying control BAM | experiment.py:check_control_read_depth_standards:355-362 |
| missing control quality metric | WARNING | the control BAMs carry no depth metric | experiment.py:audit_experiment_chipseq_control_read_depth:217-226 |
| missing control_type of control experiment | WARNING | the control experiment has no `control_type` | experiment.py:check_control_target_failures:248-259 |
| improper control_type of control experiment | WARNING | `control_type` is neither `input library` nor `wild type` | experiment.py:check_control_target_failures:260-278 |
| unexpected target of control experiment | WARNING | the control experiment has a target | experiment.py:check_control_target_failures:279-297 |

## modERN

modERN analyses (worm and fly assemblies, or the modERN TF pipeline) keep the library complexity and IDR rules, skip NSC and RSC, and use one depth cutoff.

| Flag | Level | Condition | Location |
|---|---|---|---|
| insufficient read depth | NOT_COMPLIANT | `read_depth < 3000000` | analysis.py:check_file_modERN_chip_seq_read_depth:1266-1286 |

## Other audits that apply

`missing possible_controls` (ERROR), `low read count` (20000000 raw reads per biological replicate, `in progress` experiments only), and the antibody, target, replication and genetic modification audits. See [assay-agnostic audits](../../audits/README.md#assay-agnostic-audits). ENCODE4 ChIP-seq raises the missing genetic modification and biosample characterization audits to ERROR.

## Differences from the published standards

- Broad marks: the [ENCODE4 page](histone/encode4.md) gives a 20 million minimum. The code flags 5 to 35 million as NOT_COMPLIANT, and its own detail text still says 20 million.
- H3K9me3: the page rule (45 million total mapped reads) covers tissues and primary cells. The code applies it to every biosample, halves paired-end counts and sets ERROR at `< 100` reads.
- Library complexity: the [terms page](../../GLOSSARY.md#chip-seq-complexity-tiers) shows no flag for PBC1 0.8 to 0.9 or PBC2 3 to 10. The code raises WARNING there. NRF 0.8 to 0.9 raises nothing, below the page's preferred NRF > 0.9.
- Read length: the pages say the pipeline can process 25 bp reads. The code gives 25 bp an ERROR.
- IDR: the pages recommend both ratios `< 2`. The code flags only ratios `> 2`, so a ratio of exactly 2 passes.
- EN-TEx: the pages allow an EN-TEx exemption from replication. The code has none.
- Controls: the code does not check that control and experiment share a replicate structure. Run type and read length mismatches are WARNING, and read length only when the difference exceeds 2 bp.
- Broad-mark controls: a 25 million fragment input gets INTERNAL_ACTION in the control analysis but NOT_COMPLIANT on the treated experiment.

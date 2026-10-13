# ATAC-seq: portal audits

[Root](../../README.md) / [DNA accessibility](../README.md) / [ATAC-seq](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses with `ATAC-seq (replicated)` or `ATAC-seq (unreplicated)` on GRCh38 or mm10. Metrics come from filtered alignments unless noted. The experiment-level code lists ATAC-seq but has no ATAC branch, so ATAC fastqs get no read-length audit. All rules live in `analysis.py:check_analysis_atac_encode4_qc_standards`; the line ranges below are inside it.

## Mapping and read depth

Depth is AtacAlignmentQualityMetric `mapped_reads`, [halved for paired-end data](../../audits/README.md#how-to-read-the-conditions), with no `processing_stage` filter. Replicated and unreplicated analyses share one set of tiers.

| Flag | Level | Condition | Lines |
|---|---|---|---|
| acceptable alignment rate | WARNING | `80 <= pct_mapped_reads <= 95` | 1892-1893 |
| low alignment rate | NOT_COMPLIANT | `pct_mapped_reads < 80` | 1894-1895 |
| low read depth | WARNING | `20000000 <= mappedReads < 25000000` | 1897-1921 |
| insufficient read depth | NOT_COMPLIANT | `15000000 <= mappedReads < 20000000` | 1922-1923 |
| extremely low read depth | ERROR | `mappedReads < 15000000` | 1924-1925 |

## Fragment lengths and enrichment

| Flag | Level | Condition | Lines |
|---|---|---|---|
| no peaks in nucleosome-free regions | NOT_COMPLIANT | `not nfr_peak_exists` | 1927-1935 |
| negative NSC, negative RSC | ERROR | `NSC < 0` or `RSC < 0` | analysis.py:negative_coefficients:194-203 |
| low TSS enrichment (mm10) | NOT_COMPLIANT | `tss < 10` | 1952-1962 |
| moderate TSS enrichment (mm10) | WARNING | `10 <= tss <= 15` | 1963-1964 |
| low TSS enrichment (GRCh38) | NOT_COMPLIANT | `tss < 5` | 1966-1976 |
| moderate TSS enrichment (GRCh38) | WARNING | `5 <= tss <= 7` | 1977-1978 |
| low FRiP score | NOT_COMPLIANT | `frip < 0.2` on `pseudoreplicated peaks` (pooled peaks for replicated data) | 2062-2063 |
| moderate FRiP score | WARNING | `frip >= 0.2 and PBC1 <= 0.3`. The second test reads PBC1, not FRiP. | 2064-2065 |

## Library complexity

AtacLibraryQualityMetric.

| Flag | Level | Condition | Lines |
|---|---|---|---|
| poor library complexity | NOT_COMPLIANT | `NRF < 0.7` | 2000-2001 |
| moderate library complexity | WARNING | `0.7 <= NRF < 0.9` | 2002-2003 |
| severe bottlenecking | NOT_COMPLIANT | `PBC1 < 0.7` | 2020-2021 |
| mild to moderate bottlenecking | WARNING | `0.7 <= PBC1 <= 0.9` | 2022-2023 |
| severe bottlenecking | NOT_COMPLIANT | `PBC2 < 1` (`'Infinity'` counts as infinite) | 2026-2044 |
| mild to moderate bottlenecking | WARNING | `1 <= PBC2 <= 3` | 2045-2046 |

## Replicate concordance and peak counts

AtacReplicationQualityMetric on `replicated peaks`, `pseudoreplicated peaks`, `conservative IDR thresholded peaks` and `IDR thresholded peaks`.

| Flag | Level | Condition | Lines |
|---|---|---|---|
| insufficient replicate concordance | NOT_COMPLIANT | `rescue_ratio >= 2 and self_consistency_ratio >= 2`, replicated data only | 2109-2122 |
| borderline replicate concordance | WARNING | `rescue_ratio >= 2 or self_consistency_ratio >= 2` | 2123-2124 |
| moderate number of reproducible peaks | WARNING | no file passes, and an overlap file has `100000 <= reproducible_peaks <= 150000` or an IDR file has `50000 <= reproducible_peaks <= 70000` | 2088-2107, 2128-2147 |
| insufficient number of reproducible peaks | NOT_COMPLIANT | no pass and no warning, and overlap `< 100000` or IDR `< 50000` | 2088-2107, 2148-2149 |
| duplicate QC metrics | ERROR | more than one AtacReplicationQualityMetric on one peaks file | 2076-2082 |

A pass is `> 150000` overlap peaks or `> 70000` IDR peaks. One passing file of either kind suppresses both peak-count audits. Only the last file of each kind is read. The peak-count audits also run for unreplicated data.

## Differences from the published standards

- Depth: the [ENCODE4 page](encode4.md) asks for 15 million fragments, so 15 to 20 million meets the page but is NOT_COMPLIANT here. The [ENCODE3 page](encode3.md) asks for 25 million, so 20 to 25 million fails it but gets only WARNING. The audit links to the ENCODE3 page.
- FRiP: the pages exempt EN-TEx tissues. The code does not. The WARNING test for FRiP reads PBC1, so the moderate FRiP flag tracks library complexity instead of FRiP.
- Replicates: the pages require two technical replicates for EN-TEx. The code counts only biological replicates and has no EN-TEx rule.
- Boundaries: exactly 80% alignment, exactly 100,000 overlap peaks and exactly 50,000 IDR peaks are WARNING. The pages state those values with `>`.
- IDR: the code flags a ratio of exactly 2 (`>= 2`). The ChIP-seq audit lets 2.0 pass.
- Not audited: the mononucleosome peak, the 45 bp read-length minimum, SOLiD reads, and TSS cutoffs for hg19 and mm9.

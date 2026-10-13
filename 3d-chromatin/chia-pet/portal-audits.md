# ChIA-PET: portal audits

[Root](../../README.md) / [3D chromatin](../README.md) / [ChIA-PET](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses run by `Ruan Lab ChIA-PIPE Pipeline` on GRCh38 or mm10, with one dataset and one pipeline. ChIA-PET is a target-based assay, so it also needs a target and an antibody (ERROR). Its fastqs get no read-length audit. All rules live in `analysis.py:check_analysis_chiapet_encode4_qc_standards`.

| Flag | Level | Condition | Metric | Lines |
|---|---|---|---|---|
| low total read pairs | WARNING | `total_rp < 150000000` | ChiaPetAlignmentQualityMetric `total_rp` | 2188-2200 |
| low fraction of read pairs with linker | NOT_COMPLIANT | `frp_bl < 0.5` | ChiaPetAlignmentQualityMetric `frp_bl` | 2202-2213 |
| low non-redundant PET | NOT_COMPLIANT | `nr_pet < 10000000` | ChiaPetAlignmentQualityMetric `nr_pet` | 2215-2225 |
| low protein factor binding peaks | NOT_COMPLIANT | `binding_peaks < 10000` | ChiaPetPeakEnrichmentQualityMetric on `peaks` files | 2231-2241 |
| low intra/inter-chr PET ratio | WARNING | `intra_inter_pet_ratio < 1` | ChiaPetChrInteractionsQualityMetric on `contact matrix` and `loops` files | 2247-2260 |

The detail texts mention a 100,000,000 read-pair minimum and a ratio below 1 for the long-reads protocol. The conditions ignore both.

## Differences from the published standards

- The [page](standards.md) calls every metric "recommended" and names no levels. The code makes the linker fraction, non-redundant PETs and binding peaks NOT_COMPLIANT.
- The page's high-quality tier (≥ 180,000,000 read pairs) is not audited.
- The ENCODE4 [experimental guidelines](experimental-guidelines.md) expect far larger outputs than these cutoffs.

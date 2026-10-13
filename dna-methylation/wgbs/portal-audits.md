# WGBS: portal audits

[Root](../../README.md) / [DNA methylation](../README.md) / [WGBS](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: GRCh38 and mm10 analyses with one dataset. RRBS is excluded. Tiers are tested in order (`< 5`, then `< 25`, then `< 30`).

## ENCODE4 gemBS pipeline

| Flag | Level | Condition | Metric | Location |
|---|---|---|---|---|
| extremely low coverage | ERROR | `coverage < 5` | GembsAlignmentQualityMetric `average_coverage` | analysis.py:check_analysis_wgbs_encode4_standards:1764-1775 |
| insufficient coverage | NOT_COMPLIANT | `coverage < 25` | same | analysis.py:check_analysis_wgbs_encode4_standards:1774-1777 |
| low coverage | WARNING | `coverage < 30` | same | analysis.py:check_analysis_wgbs_encode4_standards:1774-1779 |
| insufficient replicate concordance | NOT_COMPLIANT | `Pearson correlation < 0.8`, replicated data only | CpgCorrelationQualityMetric on CpG files | analysis.py:check_wgbs_pearson:1812-1820 |
| low lambda C conversion rate | WARNING | `conversion_rate < 0.98` | GembsAlignmentQualityMetric `conversion_rate` (a fraction) | analysis.py:check_analysis_wgbs_encode4_standards:1789-1798 |
| missing lambda C conversion rate | ERROR (WARNING for Roadmap datasets) | the metric lacks `conversion_rate` | same | analysis.py:check_analysis_wgbs_encode4_standards:1799-1807 |

## ENCODE3 Bismark pipelines (single-end and paired-end)

Coverage is computed as `mapped * min(read_lengths) / 3300000000.0` for GRCh38 and `/ 2800000000.0` for mm10. `mapped` is SamtoolsFlagstatsQualityMetric on CpG files. Read length is the SamtoolsStatsQualityMetric "average length" of the alignments.

| Flag | Level | Condition | Location |
|---|---|---|---|
| extremely low coverage | ERROR | `coverage < 5` | analysis.py:check_analysis_wgbs_encode3_standards:1686-1702 |
| insufficient coverage | NOT_COMPLIANT | `coverage < 25` | analysis.py:check_analysis_wgbs_encode3_standards:1701-1704 |
| low coverage | WARNING | `coverage < 30` | analysis.py:check_analysis_wgbs_encode3_standards:1701-1706 |
| insufficient replicate concordance | NOT_COMPLIANT | `Pearson correlation < 0.8`, replicated data only | analysis.py:check_wgbs_pearson:1812-1820 |
| high lambda C methylation ratio | WARNING | lambda C methylation above 1 (percent) in all of CpG, CHG and CHH, or `0.25 × CpG + 0.25 × CHG + 0.5 × CHH > 1` | analysis.py:check_analysis_wgbs_encode3_standards:1714-1733 |

## Reads

| Flag | Level | Condition | Location |
|---|---|---|---|
| insufficient read length | NOT_COMPLIANT | `read_length < 100` on fastqs, human or mouse. Fastqs without `read_length` are skipped. | experiment.py:check_wgbs_read_lengths:794-817 |

The call passes a human threshold of 130 that the function never reads.

## Differences from the published standards

- Coverage: the [pages](encode4.md) set only a 30X target. The audits page and the code add 25X and 5X tiers.
- Conversion: the gemBS rule matches the page's ≥ 98%. The Bismark rule flags more than 1% lambda methylation, which amounts to a 99% conversion cutoff (derived). The gemBS detail text says "should be > 99%".
- Coverage formula: the [terms page](../../GLOSSARY.md#read-depth-units) divides by 3e+09 and counts uniquely mapped reads. The Bismark code divides by `3300000000.0` (GRCh38) or `2800000000.0` (mm10) and uses flagstat `mapped`.
- Scope: the audits page describes the coverage tiers for the paired-end pipeline only. The code applies them to the single-end pipeline and gemBS too.
- EN-TEx: the pages allow an EN-TEx exemption. The code has none.

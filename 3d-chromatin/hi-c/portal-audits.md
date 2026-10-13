# Hi-C: portal audits

[Root](../../README.md) / [3D chromatin](../README.md) / [Hi-C](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. A value outside every tier raises no flag. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

Scope: analyses run by `Hi-C pipeline` on GRCh38 or mm10, with one dataset and one pipeline. HicQualityMetric comes from `contact matrix` and `loops` files. Libraries with `hic_construction` `intact` get the intact rules. Every other title (in situ, dilution, Hi-C) gets the in situ rules. Several bands use strict `<` and `>` on both sides, so a value exactly at 40, 20 or 5 raises nothing.

## Intact Hi-C

| Flag | Level | Condition | Location |
|---|---|---|---|
| low total_unique reads | WARNING | `total_unique < 2000000000` | analysis.py:check_intact_hic_standards:2308-2319 |
| low pct_unique_hic_contacts | WARNING | `40 < pct_unique_hic_contacts < 50` | analysis.py:check_intact_hic_standards:2336-2338 |
| extremely low pct_unique_hic_contacts | NOT_COMPLIANT | `pct_unique_hic_contacts < 40` | analysis.py:check_intact_hic_standards:2339-2340 |
| extremely low pct_unique_long_range_greater_than_20kb | NOT_COMPLIANT | `pct_unique_long_range_greater_than_20kb < 15` | analysis.py:check_intact_hic_standards:2342-2355 |

## In situ Hi-C

| Flag | Level | Condition | Location |
|---|---|---|---|
| low sequenced_read_pairs | WARNING | `sequenced_read_pairs < 2000000000` | analysis.py:check_in_situ_hic_standards:2364-2376 |
| high pct_unique_total_duplicates | WARNING | `pct_unique_total_duplicates > 40` | analysis.py:check_in_situ_hic_standards:2377-2391 |
| low pct_unique_hic_contacts | WARNING | `20 < pct_unique_hic_contacts < 50` | analysis.py:check_in_situ_hic_standards:2408-2410 |
| extremely low pct_unique_hic_contacts | NOT_COMPLIANT | `pct_unique_hic_contacts < 20` | analysis.py:check_in_situ_hic_standards:2411-2412 |
| low pct_ligation_motif_present | WARNING | `5 < pct_ligation_motif_present < 25` | analysis.py:check_in_situ_hic_standards:2428-2430 |
| extremely low pct_ligation_motif_present | NOT_COMPLIANT | `pct_ligation_motif_present < 5` | analysis.py:check_in_situ_hic_standards:2431-2432 |
| low pct_unique_long_range_greater_than_20kb | WARNING | `20 < pct_unique_long_range_greater_than_20kb < 35` | analysis.py:check_in_situ_hic_standards:2446-2448 |
| extremely low pct_unique_long_range_greater_than_20kb | NOT_COMPLIANT | `pct_unique_long_range_greater_than_20kb < 20` | analysis.py:check_in_situ_hic_standards:2449-2450 |

## Libraries

| Flag | Level | Condition | Location |
|---|---|---|---|
| missing fragmentation method | WARNING | a library lacks `fragmentation_methods` | experiment.py:audit_hic_restriction_enzyme_in_libaries:91-116 |
| inconsistent fragmentation method | WARNING | libraries of one experiment use different fragmentation methods | experiment.py:audit_hic_restriction_enzyme_in_libaries:118-129 |

## Differences from the published standards

- Ligation motif: the [page](standards.md) sets a 15% minimum for in situ Hi-C. The code uses 5% for NOT_COMPLIANT and 25% for WARNING, which match the [computational guidelines](computational-guidelines.md) Fail and Pass lines.
- Intact Hi-C contacts: the page sets a 50% minimum (ideally over 60%). The code is NOT_COMPLIANT only below 40% and has no rule at 60%.
- Intact depth: the page asks for 2 billion total reads. The code tests unique reads (`total_unique`) and raises only WARNING. Its detail text says "over 2 billion total reads".
- In situ depth: the page sets no depth rule. The code warns below 2 billion sequenced read pairs.
- Not audited: the genophasing tiers.

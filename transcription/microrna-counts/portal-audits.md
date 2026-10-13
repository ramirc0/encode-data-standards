# microRNA counts: portal audits

[Root](../../README.md) / [Transcription](../README.md) / [microRNA counts](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Levels and colors: [audits](../../audits/README.md#levels).

No audit reads a microRNA counts quality metric. Only generic audits apply.

| Flag | Level | Condition | Location |
|---|---|---|---|
| unreplicated experiment | NOT_COMPLIANT; INTERNAL_ACTION for tissue and primary cell | one biological replicate (zero is always NOT_COMPLIANT). ENCODE4, ENCODE3 and GGR awards; released or submitted. | experiment.py:audit_experiment_replicated:1522-1540 |
| missing raw data in replicate | ERROR; INTERNAL_ACTION for ENCODE2, Roadmap, modENCODE and ENCODE2-Mouse | a replicate has no files | experiment.py:audit_experiment_replicate_with_no_files:1464-1473 |

## Differences from the published standards

- The [page](standards.md) requires Pearson ≥ 0.90 between the normalized counts of two biological replicates. No audit checks it.

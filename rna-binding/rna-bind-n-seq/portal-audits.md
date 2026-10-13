# RNA Bind-n-Seq: portal audits

[Root](../../README.md) / [RNA binding](../README.md) / [RNA Bind-n-Seq](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

No audit reads an RBNS quality metric.

| Flag | Level | Condition | Location |
|---|---|---|---|
| missing target | ERROR | the experiment has no target (control experiments exempt) | experiment.py:audit_experiment_target:2013-2018 |
| missing possible_controls | ERROR; NOT_COMPLIANT for ENCODE2, Roadmap, modENCODE and ENCODE2-Mouse | no possible controls | experiment.py:audit_experiment_control:2144-2161 |

RBNS is exempt from `unreplicated experiment`, the antibody audits, the library biosample checks and `experiment not submitted to GEO`.

## Differences from the published standards

- Not audited: protein purity, the number of concentrations, reads per concentration, the 6-mer R value and the Spearman correlation between concentrations. See the [standards](standards.md).

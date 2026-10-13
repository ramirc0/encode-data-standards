# eCLIP: portal audits

[Root](../../README.md) / [RNA binding](../README.md) / [eCLIP](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../../audits/README.md#levels).

No audit reads an eCLIP quality metric. eCLIP gets `missing target` (ERROR), `missing antibody` (ERROR), the antibody characterization audits, `missing possible_controls` (ERROR) and `unreplicated experiment`. See [assay-agnostic audits](../../audits/README.md#assay-agnostic-audits). eCLIP-specific rules:

| Flag | Level | Condition | Location |
|---|---|---|---|
| missing queried_RNP_size_range | ERROR | a library of the experiment or of a possible control lacks `queried_RNP_size_range` | experiment.py:audit_experiment_eclip_queried_RNP_size_range:2915-2944 |
| mixed queried_RNP_size_range | ERROR | the experiment's libraries, or the controls' libraries, list more than one size range | experiment.py:audit_experiment_eclip_queried_RNP_size_range:2946-2959 |
| inconsistent queried_RNP_size_range | ERROR | experiment and control size ranges differ | experiment.py:audit_experiment_eclip_queried_RNP_size_range:2962-2971 |

eCLIP is missing from the file-level `controlled_by` assay list, so the control's run type and read length are not compared.

## Differences from the published standards

- Not audited: the 1 million unique fragments or saturation rule, the IDR ratios, FRiP ≥ 0.005, the 50 bp paired-end requirement, and matching control run type and read length. See the [standards](standards.md).

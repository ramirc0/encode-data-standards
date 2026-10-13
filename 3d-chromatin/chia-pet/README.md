# ChIA-PET

[Root](../../README.md) / [3D chromatin](../README.md) / ChIA-PET

Chromatin interactions that involve a protein of interest, captured by immunoprecipitation and proximity ligation with a bridge linker.

| Leaf | Source | Status |
|---|---|---|
| [Standards](standards.md) | ChIA-PET Data Standards and Prototype Processing Pipeline, no date | Current |
| [Experimental guidelines](experimental-guidelines.md) | ENCODE4 ChIA-PET v2.0, July 2017 | Listed as current |
| [Experimental guidelines (ENCODE3)](experimental-guidelines-encode3.md) | ENCODE3 ChIA-PET v1.0, January 2017 | Previous |
| [Portal audits](portal-audits.md) | encoded audit code at `9bd8ff1` | Enforced |

## Where the sources disagree

| Metric | Standards page (recommended) | ENCODE4 guidelines (expected, ±20%) | Portal audits |
|---|---|---|---|
| Total read pairs | ≥ 150,000,000; ≥ 180,000,000 high quality | Total PET 200,000,000 | WARNING < 150000000 |
| Non-redundant PETs | ≥ 10,000,000 | 40,000,000 | NOT_COMPLIANT < 10000000 |
| Binding peaks | ≥ 10,000 | 50,000 | NOT_COMPLIANT < 10000 |
| Bridge-linker fraction | ≥ 0.5 | Not stated | NOT_COMPLIANT < 0.5 |
| Intra/inter-chromosomal PET ratio | ≥ 1 | Not stated (the expected counts give 0.5) | WARNING < 1 |

The ENCODE3 guidelines asked for > 150 million reads and two biological replicates. See each leaf's "Conflicts and gaps".

# microRNA-seq

[Root](../../README.md) / [Transcription](../README.md) / microRNA-seq

microRNA libraries with an average insert of no more than 30 bases.

| Leaf | Source | Status |
|---|---|---|
| [ENCODE4](encode4.md) | microRNA-seq Data Standards and Processing Pipeline (E4), dated May 2017 | Current |
| [ENCODE3](encode3.md) | microRNA-seq Data Standards and Processing Pipeline, May 2017 | Previous |
| [Portal audits](portal-audits.md) | encoded audit code at `9bd8ff1` | Enforced; applies the ENCODE4 tiers to all data |

## Changes between versions

| Criterion | ENCODE3 | ENCODE4 |
|---|---|---|
| Depth | ≥ 2 million aligned reads per replicate | Good ≥ 5 million, Acceptable 3-5 million, Poor < 3 million reads mapped to the miRNA subset (unique + multimap < 10) |
| Concordance | Gene-level Pearson ≥ 0.85 | Spearman: Good ≥ 0.85, Acceptable 0.8-0.84, Poor < 0.8 |
| microRNAs expressed | Not stated | Good ≥ 300, Acceptable 200-300, Poor < 200, at ≥ 2 CPM |
| Run type | Single-end | Single-end libraries; read 1 only for paired-end input |
| Annotation | GENCODE V24 or M4 | GENCODE V29 or M21 |

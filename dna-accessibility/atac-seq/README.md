# ATAC-seq

[Root](../../README.md) / [DNA accessibility](../README.md) / ATAC-seq

Genome-wide chromatin accessibility from Tn5 transposase insertion.

| Leaf | Source | Status |
|---|---|---|
| [ENCODE4](encode4.md) | ATAC-seq Data Standards and Processing Pipeline (ENCODE4), July 2020 | Current |
| [ENCODE3](encode3.md) | ATAC-seq Data Standards and Processing Pipeline, July 2020 | Previous |
| [Portal audits](portal-audits.md) | encoded audit code at `9bd8ff1` | Enforced |

## Changes between versions

All other thresholds match.

| Criterion | ENCODE3 | ENCODE4 | Portal audits |
|---|---|---|---|
| Depth per replicate | 25 million SE reads or 50 million PE reads, "i.e. 25 million fragments" | 15 million SE reads or 50 million PE reads, "i.e. 15 million fragments" | WARNING 20 to 25 million, NOT_COMPLIANT 15 to 20 million, ERROR < 15 million |
| TSS enrichment annotations | hg19, GRCh38, mm9, mm10 | GRCh38, mm10 | GRCh38, mm10 |

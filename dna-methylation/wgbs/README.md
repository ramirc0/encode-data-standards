# WGBS

[Root](../../README.md) / [DNA methylation](../README.md) / WGBS

Whole-genome bisulfite sequencing of DNA methylation at base resolution.

| Leaf | Source | Status |
|---|---|---|
| [ENCODE4](encode4.md) | WGBS Data Standards and gemBS-based Processing Pipeline, May 2021 | Current |
| [ENCODE3](encode3.md) | WGBS Data Standards and Processing Pipeline, June 2017 | Previous |
| [Experimental guidelines](experimental-guidelines.md) | ENCODE Standards and Guidelines for WGBS, July 2015 | Listed as current |
| [Portal audits](portal-audits.md) | encoded audit code at `9bd8ff1` | Enforced |

## Changes between versions

The ENCODE3 and ENCODE4 pages share every threshold: 30X coverage, 100 bp reads, ≥ 98% C to T conversion, and Pearson ≥ 0.8 at CpGs with ≥ 10X coverage. ENCODE4 replaced the Bismark pipelines with gemBS. The portal checks conversion differently for each pipeline (see [portal audits](portal-audits.md)).

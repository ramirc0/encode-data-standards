# Histone ChIP-seq

[Root](../../../README.md) / [DNA binding](../../README.md) / [ChIP-seq](../README.md) / Histone

ChIP-seq of histones, histone modifications and proteins that associate with DNA over long regions. Mark classes: [broad and narrow histone marks](../../../GLOSSARY.md#broad-and-narrow-histone-marks).

| Leaf | Source | Status |
|---|---|---|
| [ENCODE4](encode4.md) | Histone ChIP-seq Data Standards and Processing Pipeline (ENCODE 4), July 2020 | Current |
| [ENCODE3](encode3.md) | Histone ChIP-seq Data Standards and Processing Pipeline, June 2017 | Previous |
| [ENCODE2](../encode2.md) | ENCODE2 sections of the pages, Landt 2012 and the 2008 to 2011 standards | Archived; shared with TF |

Shared ChIP-seq leaves: [experimental guidelines](../experimental-guidelines.md), [portal audits](../portal-audits.md), [antibodies](../../../antibodies/README.md).

## Changes between versions

| Criterion | ENCODE2 (pages) | ENCODE3 | ENCODE4 |
|---|---|---|---|
| Narrow marks, usable fragments per replicate | 10 million | 20 million | > 20 million recommended, > 10 million acceptable, 10 million minimum |
| Broad marks, usable fragments per replicate | 20 million | 45 million | > 45 million recommended, > 35 million acceptable, 20 million minimum |
| H3K9me3, tissues and primary cells | Not stated | 45 million total mapped reads | 45 million total mapped reads |
| Control | Input or IgG | Input | Input |
| Concordance | Not stated | Not stated | IDR ratios < 2 for "IDR thresholded peaks files" |

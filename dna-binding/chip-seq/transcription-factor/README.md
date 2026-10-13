# TF ChIP-seq

[Root](../../../README.md) / [DNA binding](../../README.md) / [ChIP-seq](../README.md) / Transcription factor

ChIP-seq of proteins that bind in a punctate manner: transcription factors, chromatin remodelers and other DNA- or chromatin-specific factors.

| Leaf | Source | Status |
|---|---|---|
| [ENCODE4](encode4.md) | TF ChIP-seq Data Standards and Processing Pipeline (ENCODE4), July 2020 | Current |
| [ENCODE3](encode3.md) | TF ChIP-seq Data Standards and Processing Pipeline, June 2017 | Previous |
| [ENCODE2](../encode2.md) | ENCODE2 sections of the pages, Landt 2012 and the 2008 to 2011 standards | Archived; shared with histone |

Shared ChIP-seq leaves: [experimental guidelines](../experimental-guidelines.md), [portal audits](../portal-audits.md), [antibodies](../../../antibodies/README.md).

## Changes between versions

| Criterion | ENCODE2 (pages) | ENCODE3 | ENCODE4 |
|---|---|---|---|
| Usable fragments per replicate | 10 million | 20 million; low 10 to 20 million, insufficient 5 to 10 million, extremely low < 5 million | > 20 million recommended, > 10 million acceptable; same flag names |
| Read length | 36 bp minimum (old TF page) | 50 bp minimum | 50 bp minimum; the pipeline processes 25 bp |
| Control | Input or IgG | Input | Input |
| Antibody standards cited | 2010 | TF (May 2016), histone (Oct 2016), RBP (Nov 2016) | TF (May 2016), epitope-tagged TF (Aug 2019) |
| IDR ratios | Both < 2 to pass | Both < 2 to pass | Both < 2 recommended, one < 2 acceptable |

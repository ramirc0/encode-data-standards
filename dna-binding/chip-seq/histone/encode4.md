# Histone ChIP-seq: ENCODE4

[Root](../../../README.md) / [DNA binding](../../README.md) / [ChIP-seq](../README.md) / [Histone](README.md) / ENCODE4

Source: [Histone ChIP-seq Data Standards and Processing Pipeline (ENCODE 4)](https://www.encodeproject.org/chip-seq/histone-encode4/), updated July 2020 ([snapshot](../../../sources/pages/chip-seq__histone-encode4.md)). The page titles its standards "Current Standards (ENCODE4/ENCODE3)".

Scope: proteins that associate with DNA over longer regions or domains, typically histones or histone modifications. Mark classes: [broad and narrow histone marks](../../../GLOSSARY.md#broad-and-narrow-histone-marks).

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Biological replicates | 2 or more, isogenic or anisogenic | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Control | One input control experiment with matching run type, read length and replicate structure | should |
| Antibody | Characterized to the [histone and chromatin-associated protein standard (October 2016)](../../../antibodies/histone-chromatin.md) | must |
| Experimental protocol | [Experimental guidelines](../experimental-guidelines.md) for ChIP-seq and epitope-tagged ChIP-seq | stated |
| Release | Passes [routine metadata audits](../../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 50 bp minimum, longer encouraged. The pipeline can process reads as short as 25 bp. | should |
| Run type | Single- or paired-end | may |
| Replicate matching | Same read length and run type | should |
| Platform | Indicated. HiSeq 2000 and HiSeq 4000 replicates are "different, and not comparable". | should |
| Assembly | GRCh38 or mm10 | stated |

## Read depth

[Usable fragments](../../../GLOSSARY.md#read-depth-units) per replicate.

| Mark class | Recommended | Acceptable | Stated minimum | Target-specific value |
|---|---|---|---|---|
| Narrow | > 20 million | > 10 million | 10 million | 20 million |
| Broad | > 45 million | > 35 million | 20 million | 45 million |
| H3K9me3, tissues and primary cells | | | | 45 million total mapped reads |

The page explains the exception. H3K9me3 is enriched in repetitive regions and has few peaks outside them in tissues and primary cells, so many of its reads map to non-unique positions.

## Library complexity

Preferred: NRF > 0.9, PBC1 > 0.9, PBC2 > 10. Graded tiers: [ChIP-seq complexity tiers](../../../GLOSSARY.md#chip-seq-complexity-tiers).

## Replicate concordance

For "ENCODE processed IDR thresholded peaks files", both [IDR](../../../GLOSSARY.md#idr) ratios < 2 is recommended and one ratio < 2 is acceptable.

## Pipeline cutoffs

| Output | Rule |
|---|---|
| Replicated peaks | Observed in both replicates or in both pseudoreplicates |
| Pseudoreplicated peaks (unreplicated) | Relaxed peaks that overlap at least 50% with peaks from both pseudoreplicates |

## Conflicts and gaps

- The narrow-mark sentence reads "targeting narrow marks and investigated as a transcription factor". It sets the same numbers as the TF page.
- Broad marks have a stated minimum of 20 million but an acceptable value of > 35 million. The page names no status for 20 to 35 million.
- The page applies an IDR criterion to "IDR thresholded peaks files", but its outputs table lists only relaxed, replicated and pseudoreplicated peaks for histone data.
- The page names no read-depth flags or audit levels for histone marks. See [portal audits](../portal-audits.md).

# Histone ChIP-seq: ENCODE3

[Root](../../../README.md) / [DNA binding](../../README.md) / [ChIP-seq](../README.md) / [Histone](README.md) / ENCODE3

Source: [Histone ChIP-seq Data Standards and Processing Pipeline](https://www.encodeproject.org/chip-seq/histone/), updated June 2017 ([snapshot](../../../sources/pages/chip-seq__histone.md)). The data standards index links it as the previous ENCODE3 page.

The [ENCODE3 histone page](https://www.encodeproject.org/chip-seq/histone-encode3/), updated July 2020 ([snapshot](../../../sources/pages/chip-seq__histone-encode3.md)), carries the same thresholds. It cites only the histone antibody standard and adds the HiSeq 2000 versus HiSeq 4000 note.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Biological replicates | 2 or more, isogenic or anisogenic | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Control | One input control experiment with matching run type, read length and replicate structure | should |
| Antibody | Characterized to ENCODE standards. The June 2017 page links the [TF (May 2016)](../../../antibodies/transcription-factor.md), [histone and chromatin-associated (October 2016)](../../../antibodies/histone-chromatin.md) and [RNA-binding protein (November 2016)](../../../antibodies/rna-binding-protein.md) standards. | must |
| Release | Passes [routine metadata audits](../../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 50 bp minimum, longer encouraged. The pipeline can process reads as short as 25 bp. | should |
| Run type | Single- or paired-end | may |
| Replicate matching | Same read length and run type | should |
| Platform | Indicated | should |
| Assembly | GRCh38 or mm10 | stated |

## Read depth

[Usable fragments](../../../GLOSSARY.md#read-depth-units) per replicate. Mark classes: [broad and narrow histone marks](../../../GLOSSARY.md#broad-and-narrow-histone-marks).

| Mark class | Per replicate |
|---|---|
| Narrow | 20 million usable fragments |
| Broad | 45 million usable fragments |
| H3K9me3, tissues and primary cells | 45 million total mapped reads |

## Library complexity

Preferred: NRF > 0.9, PBC1 > 0.9, PBC2 > 10. Graded tiers: [ChIP-seq complexity tiers](../../../GLOSSARY.md#chip-seq-complexity-tiers).

## Pipeline cutoffs

| Output | Rule |
|---|---|
| Replicated peaks | Observed in both replicates or in both pseudoreplicates |
| Pseudoreplicated peaks (unreplicated) | Relaxed peaks that overlap at least 50% with peaks from both pseudoreplicates. The page calls them "stable peaks". |

## Conflicts and gaps

- The page states one target per mark class with no acceptable or flagged tiers. See [portal audits](../portal-audits.md).
- The page states no replicate concordance threshold for histone data.

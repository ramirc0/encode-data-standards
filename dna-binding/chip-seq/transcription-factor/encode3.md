# TF ChIP-seq: ENCODE3

[Root](../../../README.md) / [DNA binding](../../README.md) / [ChIP-seq](../README.md) / [Transcription factor](README.md) / ENCODE3

Source: [Transcription Factor ChIP-seq Data Standards and Processing Pipeline](https://www.encodeproject.org/chip-seq/transcription_factor/), updated June 2017 ([snapshot](../../../sources/pages/chip-seq__transcription_factor.md)). The data standards index links it as the previous ENCODE3 page.

Two other portal pages carry the same ENCODE3 thresholds:

- [ENCODE3 TF ChIP-seq page](https://www.encodeproject.org/chip-seq/transcription-factor-encode3/), updated July 2020 ([snapshot](../../../sources/pages/chip-seq__transcription-factor-encode3.md)). It cites the TF (May 2016) and epitope-tagged TF (August 2019) antibody standards and adds the HiSeq 2000 versus HiSeq 4000 note.
- [ChIP-seq of Transcription Factors](https://www.encodeproject.org/chip-seq-old/transcription-factor/), an older page ([snapshot](../../../sources/pages/chip-seq-old__transcription-factor.md)). It words the replicate and read-length rules as "must".

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Biological replicates | 2 or more, isogenic or anisogenic | should (older page: must) |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Control | One input control experiment with matching run type, read length and replicate structure | should |
| Antibody | Characterized to ENCODE standards. The June 2017 page links the [TF (May 2016)](../../../antibodies/transcription-factor.md), [histone and chromatin-associated (October 2016)](../../../antibodies/histone-chromatin.md) and [RNA-binding protein (November 2016)](../../../antibodies/rna-binding-protein.md) standards. | must |
| Release | Passes [routine metadata audits](../../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 50 bp minimum, longer encouraged. The pipeline can process reads as short as 25 bp. | should (older page: "The minimum read length is 50 base pairs") |
| Run type | Single- or paired-end | may |
| Replicate matching | Same read length and run type | should (older page: must) |
| Platform | Indicated | should (older page: must) |
| Assembly | GRCh38 or mm10 | stated |

## Read depth

[Usable fragments](../../../GLOSSARY.md#read-depth-units) per replicate. The older page counts per replicate for single-end data and "per mate pair for paired-ended data".

| Usable fragments | Status |
|---|---|
| 20 million | target ("should have") |
| 10 to 20 million | low read depth |
| 5 to 10 million | insufficient read depth |
| < 5 million | extremely low read depth |

## Library complexity

Preferred: NRF > 0.9, PBC1 > 0.9, PBC2 > 10. Graded tiers: [ChIP-seq complexity tiers](../../../GLOSSARY.md#chip-seq-complexity-tiers).

## Replicate concordance

The experiment passes if both the [IDR](../../../GLOSSARY.md#idr) rescue ratio and self-consistency ratio are less than 2.

## Enrichment

FRiP and similar metrics are calculated without defined thresholds.

## Pipeline cutoffs

| Output | Rule |
|---|---|
| Conservative IDR peaks | IDR on biological replicates |
| Optimal IDR peaks | The largest IDR set from replicates and pseudoreplicates |
| Pseudoreplicated IDR thresholded peaks (unreplicated) | Peaks that "cross the same IDR threshold as for replicated experiments" |

## Conflicts and gaps

- No acceptable tier is stated. ENCODE4 later called > 10 million acceptable.
- The tier edges at 10 and 20 million are ambiguous on the page. See [portal audits](../portal-audits.md).

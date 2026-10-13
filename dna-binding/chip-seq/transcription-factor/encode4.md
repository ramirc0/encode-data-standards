# TF ChIP-seq: ENCODE4

[Root](../../../README.md) / [DNA binding](../../README.md) / [ChIP-seq](../README.md) / [Transcription factor](README.md) / ENCODE4

Source: [Transcription Factor ChIP-seq Data Standards and Processing Pipeline (ENCODE4)](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/), updated July 2020 ([snapshot](../../../sources/pages/chip-seq__transcription-factor-encode4.md)). The data standards index lists it as current.

Scope: proteins expected to bind in a punctate manner. The page names transcription factors, chromatin remodelers, RNA-binding proteins and other DNA- or chromatin-specific factors. Targets get categories from GO annotations ([target category](../../../GLOSSARY.md#target-category)).

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Biological replicates | 2 or more, isogenic or anisogenic | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Control | One input control experiment with matching run type, read length and replicate structure | should |
| Antibody | Characterized to the [TF standard (May 2016)](../../../antibodies/transcription-factor.md) or the [epitope-tagged TF standard (August 2019)](../../../antibodies/epitope-tagged-tf.md) | must |
| Experimental protocol | [Experimental guidelines](../experimental-guidelines.md) for ChIP-seq and epitope-tagged ChIP-seq | stated |
| Release | Passes [routine metadata audits](../../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 50 bp minimum, longer encouraged. The pipeline can process reads as short as 25 bp. | should |
| Run type | Single- or paired-end | may |
| Replicate matching | Same read length and run type | should |
| Platform | Indicated. Platforms might not be comparable: HiSeq 2000 and HiSeq 4000 replicates are "different, and not comparable". | should |
| Assembly | GRCh38 or mm10 | stated |

## Read depth

[Usable fragments](../../../GLOSSARY.md#read-depth-units) per replicate.

| Usable fragments | Page wording | Flag named on the page |
|---|---|---|
| > 20 million | recommended | none |
| > 10 million | acceptable; 10 million is "the minimum ENCODE standard" | none stated |
| 10 to 20 million | | low read depth |
| 5 to 10 million | | insufficient read depth |
| < 5 million | | extremely low read depth |

The target-specific section restates the target as "Each replicate should have 20 million usable fragments."

## Library complexity

| Metric | Preferred |
|---|---|
| NRF | > 0.9 |
| PBC1 | > 0.9 |
| PBC2 | > 10 |

Graded tiers: [ChIP-seq complexity tiers](../../../GLOSSARY.md#chip-seq-complexity-tiers).

## Replicate concordance

[IDR](../../../GLOSSARY.md#idr) rescue ratio and self-consistency ratio.

| Ratios | Page wording |
|---|---|
| Both < 2 | recommended; "the experiment passes" |
| Only one < 2 | acceptable |

## Enrichment

FRiP and similar metrics "are calculated without defined thresholds" and serve to compare similar experiments.

## Pipeline cutoffs

| Output | Cutoff |
|---|---|
| IDR thresholded peaks (replicated) | IDR 0.05 |
| IDR ranked peaks (unreplicated) | Ranked by IDR score; no cutoff stated |

## Conflicts and gaps

- The page gives two framings of the same depth rule: "recommended > 20 million, acceptable > 10 million" and the 20 million target with named flags. Exactly 10 million and exactly 20 million each fall on two tier edges. The [portal audits](../portal-audits.md) set the operators.
- The page names flags but not their audit levels. See [portal audits](../portal-audits.md).
- [Hitz et al. 2023](https://doi.org/10.1101/2023.04.04.535623) (p8) lists FRiP, NSC/RSC and JSD among the key ChIP-seq QC metrics and says "Thresholds are defined for each of the key quality metrics". This page sets no FRiP threshold. Neither the page nor the portal audits set NSC, RSC or JSD cutoffs, beyond an ERROR for negative NSC or RSC.

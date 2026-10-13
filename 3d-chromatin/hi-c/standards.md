# Hi-C: standards

[Root](../../README.md) / [3D chromatin](../README.md) / [Hi-C](README.md) / Standards

Source: [HiC Data Standards and Processing Pipeline](https://www.encodeproject.org/hic/), updated September 2022 ([snapshot](../../sources/pages/hic.md)). The page states no ENCODE phase. The pipeline is Juicer from the Aiden lab.

The experiment must pass [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) to be released. The page sets quality metrics on the chromatin interaction (.hic) file.

## Intact Hi-C

| Metric | Minimum | Ideal |
|---|---|---|
| Total reads | 2 billion | |
| Unique reads in Hi-C contacts | 50% | > 60% |
| Unique reads in long-range contacts | 15% | |

## In situ Hi-C

| Metric | Threshold | Ideal |
|---|---|---|
| Unique total duplicates | 40% maximum | |
| Unique reads in Hi-C contacts | 20% minimum | > 50% |
| Reads with the ligation motif present | 15% minimum | |
| Unique reads in long-range contacts | 20% minimum | > 35% |

The page gives the failure each metric flags:

- High duplicates mean low molecular complexity.
- Few unique reads in contacts mean a failed restriction, fill-in or ligation step.
- Few reads with the ligation motif mean failed ligation.

In situ protocols: [experimental guidelines](experimental-guidelines.md) and [computational guidelines](computational-guidelines.md).

## Genophasing

A per-chromosome text file reports the percent of heterozygous SNPs phased into the largest phased block.

| Status | Rule |
|---|---|
| Good | > 90% of phased SNPs in the largest block, for most chromosomes |
| Acceptable | > 50% of phased SNPs in the largest block, for most chromosomes |

## Pipeline cutoffs

| Output | Rule |
|---|---|
| Mapping-quality thresholded contact matrix | Drops alignments with MAPQ < 30 |
| Preferred files | Outputs derived from MAPQ 30 data, marked `preferred_default=true` |
| Pairs file | Reads with at least two ligated sequences that align uniquely; duplicates removed |

## Conflicts and gaps

- The page does not define "long-range". See the [computational guidelines](computational-guidelines.md).
- "Most chromosomes" in the genophasing tiers has no count.

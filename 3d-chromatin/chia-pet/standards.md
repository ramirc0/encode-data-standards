# ChIA-PET: standards

[Root](../../README.md) / [3D chromatin](../README.md) / [ChIA-PET](README.md) / Standards

Source: [ChIA-PET Data Standards and Prototype Processing Pipeline](https://www.encodeproject.org/chia-pet/), no update date ([snapshot](../../sources/pages/chia-pet.md)). The page states no ENCODE phase. It links the experiment guidelines page, which lists the ENCODE4 ChIA-PET v2.0 [experimental guidelines](experimental-guidelines.md). The pipeline is ChIA-PIPE from the Jackson lab.

Scope: chromatin interactions that involve a protein of interest, captured by immunoprecipitation and proximity ligation with a biotinylated bridge linker, then paired-end sequenced.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Run type | Paired-end reads | stated |
| Assembly | GRCh38 (human) or mm10 (mouse) | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Quality metrics

| Metric group | Metric | Recommended | High quality |
|---|---|---|---|
| Alignment | Total read pairs | ≥ 150,000,000 | ≥ 180,000,000 |
| Alignment | Fraction of read pairs with bridge linker | ≥ 0.5 | |
| Alignment | Non-redundant PETs | ≥ 10,000,000 | |
| Chromatin interactions | Ratio of intra- to inter-chromosomal PETs | ≥ 1 | |
| Peak enrichment | Protein factor binding peaks | ≥ 10,000 | |

## Pipeline cutoffs

| Step | Rule |
|---|---|
| Usable tags | Both genomic sequences flanking the linker are ≥ 18 bp ("single linker 2 tags") |
| Alignments | Uniquely mapped and deduplicated |
| Loops | Intra-chromosomal only. Loops with a PET count ≤ 2 are removed. |
| Peaks | SPP (broadPeak) when an input control ChIP-seq exists, else MACS2 (narrowPeak) |
| Contact matrix (.hic) | Keeps intra- and inter-chromosomal contacts with no PET-count filter |

## Conflicts and gaps

- The [terms page](../../GLOSSARY.md#raw-overlap) defines two ChIA-PET concordance metrics, but this page sets no concordance threshold.
- The unique usable PET definition leaves the maximum tag distance "currently being determined".

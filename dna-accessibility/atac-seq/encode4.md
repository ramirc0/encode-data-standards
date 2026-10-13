# ATAC-seq: ENCODE4

[Root](../../README.md) / [DNA accessibility](../README.md) / [ATAC-seq](README.md) / ENCODE4

Source: [ATAC-seq Data Standards and Processing Pipeline (ENCODE4)](https://www.encodeproject.org/data-standards/atac-seq/atac-encode4/), updated July 2020 ([snapshot](../../sources/pages/data-standards__atac-seq__atac-encode4.md)). The data standards index lists it as current.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Biological replicates | 2 or more | should |
| EN-TEx samples | May be exempt from the biological replicate rule, but at least 2 technical replicates are required | may be exempted; required |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 45 bp minimum, before any trimming | should |
| Run type | Single- or paired-end, if the run type is specified and pairs are indicated | may |
| Platform | Any Illumina platform. Data from different platforms are processed separately. Colorspace (SOLiD) reads are not supported. | stated |
| Barcodes | Indicated, if present in the FASTQ | must |
| Library insert size | Range indicated | must |
| Assembly | GRCh38 or mm10 (pipeline references) | stated |

## Read depth

Non-duplicate, non-mitochondrial [aligned reads](../../GLOSSARY.md#read-depth-units) per replicate.

| Run type | Per replicate | ENCODE wording |
|---|---|---|
| Single-end | 15 million reads | should |
| Paired-end | 50 million reads | should |
| Either | "i.e. 15 million fragments, regardless of sequencing run type" | stated |

## Mapping

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Alignment rate | > 95% | should |
| Alignment rate | > 80% | may be acceptable |

## Library complexity

Preferred: NRF > 0.9, PBC1 > 0.9, PBC2 > 3. Graded tiers: [ATAC-seq complexity tiers](../../GLOSSARY.md#atac-seq-complexity-tiers).

## Replicate concordance

The experiment passes if both the [IDR](../../GLOSSARY.md#idr) rescue ratio and self-consistency ratio are less than 2.

## Peaks and fragment lengths

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Peaks in a replicated peak file | > 150,000 | should |
| Peaks in a replicated peak file | > 100,000 | may be acceptable |
| Peaks in an IDR peak file | > 70,000 | should |
| Peaks in an IDR peak file | > 50,000 | may be acceptable |
| Nucleosome-free region (NFR) | Present | must |
| Mononucleosome peak in the fragment length distribution | Present. These fragments are longer than 147 bp and shorter than 147 × 2 bp. | must |

## Enrichment

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| [FRiP](../../GLOSSARY.md#frip) | > 0.3 | should |
| FRiP | > 0.2 | acceptable |
| FRiP, EN-TEx tissues | Not enforced. TSS enrichment remains the key signal-to-noise measure. | stated |

[TSS enrichment](../../GLOSSARY.md#tss-enrichment) cutoffs depend on the TSS annotation.

| Annotation | Concerning | Acceptable | Ideal |
|---|---|---|---|
| GRCh38 RefSeq TSS | < 5 | 5 - 7 | > 7 |
| mm10 RefSeq TSS | < 10 | 10 - 15 | > 15 |

## Pipeline cutoffs

| Output | Rule |
|---|---|
| Replicated peaks | Observed in both replicates or in both pseudoreplicates |
| Pseudoreplicated peaks | Relaxed peaks that overlap at least 50% with peaks from both pseudoreplicates |
| Pseudoreplicated IDR thresholded peaks (unreplicated) | Cross "the same IDR threshold as for replicated experiments" |

The page recommends replicated peaks for a low false negative rate and IDR peaks for a low false positive rate.

## Conflicts and gaps

- The depth sentence contradicts itself. 50 million paired-end reads is 25 million fragments, not 15 million. The [ENCODE3 page](encode3.md) reads 25 million single-end reads, 50 million paired-end reads, 25 million fragments. See the [portal audits](../portal-audits.md) for the value the portal enforces.
- Flags and audit levels are not stated on this page. See [portal audits](../portal-audits.md).

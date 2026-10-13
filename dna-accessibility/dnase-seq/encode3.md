# DNase-seq: ENCODE3

[Root](../../README.md) / [DNA accessibility](../README.md) / [DNase-seq](README.md) / ENCODE3

Source: [DNase-seq Data Standards](https://www.encodeproject.org/data-standards/dnase-seq/), no update date ([snapshot](../../sources/pages/data-standards__dnase-seq.md)). The data standards index links it as the previous ENCODE3 page. It also covers genetic modification followed by DNase-seq.

The thresholds match the [ENCODE4 page](encode4.md) except for the TALEN rule below. This page carries no pipeline description.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Biological replicates | 2 or more, isogenic or anisogenic | should |
| EN-TEx or other rare sample types | May be exempt from the replicate rule | may be exempted |
| TALEN-modified experiments | Both homozygous and heterozygous deletion replicates | should |
| Experimental protocol | [Experimental guidelines](experimental-guidelines.md) | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 36 bp minimum | should |
| Adapter trimming | Recommended | recommended |
| Trimmed read length | No minimum, but effective mapping "drops significantly" below 22 bp | stated |
| Adapter sequences | Documented and available to the pipeline | should |
| Barcodes and UMIs | Indicated in the metadata for duplicate filtering | should |
| Run type | Single- or paired-end, if specified and pairs are indicated. Paired-end is preferred. | may; preferred |
| Platform | Indicated | must |
| Assembly | GRCh38 or mm10 | stated |

## Read depth

[Uniquely mapping reads](../../GLOSSARY.md#read-depth-units) per replicate.

| Purpose | Uniquely mapping reads | ENCODE wording |
|---|---|---|
| Reliable SPOT score | 20 million minimum | requires |
| Standard DNase-seq profile | 50 million | recommended |
| Reliable footprints | 100 million minimum | requires |
| Deep, footprinting-depth DNase-seq | 150-200 million paired-end | recommended |

## Enrichment, mitochondrial reads and mappability

| SPOT | Meaning |
|---|---|
| ≥ 0.4 | "a product of high quality data" |
| < 0.3 | Target for replacement with a higher quality sample whenever possible |
| 0.25 | "minimally acceptable for rare and hard to find primary tissues" |
| Below 0.25 | "In very rare cases of limited sample availability", usable "with appropriate caution" |

Compute [SPOT](../../GLOSSARY.md#spot) on deduplicated data, or on data with a duplicate rate < 5%.

| Status | SPOT | Mitochondrial fraction | Mappability, excluding mitochondrial reads |
|---|---|---|---|
| Good | ≥ 0.4 | < 10% | > 75% |
| Acceptable | 0.3 - 0.4 | 10 - 15% | 65 - 75% |
| Poor | < 0.25 | > 15% | < 65% |

The table footnote: "SPOT scores of 0.25 - 0.3 are minimally acceptable in certain circumstances".

## Replicate concordance

| Replicate pair | Pearson correlation | ENCODE wording |
|---|---|---|
| Isogenic | > 0.9 | should |
| Anisogenic | > 0.85 | should |

## Conflicts and gaps

- The same gaps as ENCODE4: SPOT 0.25 to 0.3 appears only in a footnote, and the concordance rule names "gene level quantification".
- Flags and audit levels are not stated on this page. See [portal audits](../portal-audits.md).

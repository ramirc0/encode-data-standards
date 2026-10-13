# Small RNA-seq: standards

[Root](../../README.md) / [Transcription](../README.md) / [Small RNA-seq](README.md) / Standards

Source: [Small RNA-seq Data Standards and Processing Pipeline](https://www.encodeproject.org/data-standards/rna-seq/small-rnas/), updated June 2017 ([snapshot](../../sources/pages/data-standards__rna-seq__small-rnas.md)). The page states no ENCODE phase. Its annotations (GENCODE V24, V19 and M4) match the ENCODE3 pipelines.

Scope: libraries from rRNA-depleted total RNA, size-selected to be shorter than about 200 nucleotides.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Definition | Average library insert size < 200 bp | stated |
| Replicates | 2 or more | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Experimental protocol | [Experimental guidelines](../experimental-guidelines.md) cover small RNA-seq | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 50 bp minimum | should |
| Run type | Single-end | should |
| Platform | Any Illumina platform. Colorspace (SOLiD) is not supported. | stated |
| Barcodes and [spike-ins](https://www.encodeproject.org/references/ENCSR999FPQ/) | Indicated in the flowcell metadata, if present in the FASTQ | must |
| Library insert size | Range indicated | must |
| Assembly | GRCh38, hg19 or mm10 | stated |
| Annotation | GENCODE V24, V19 or M4 | stated |

## Depth and concordance

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| [Aligned reads](../../GLOSSARY.md#read-depth-units) per replicate | 30 million; older projects aimed for 10 million | should |
| Gene-level [Spearman](../../GLOSSARY.md#spearman-correlation), isogenic replicates | > 0.9 | should |
| Gene-level Spearman, anisogenic replicates (different donors) | > 0.8 | should |

## Conflicts and gaps

- Run type and strandedness disagree across the page. The overview says data "may be paired-ended and stranded or single-ended and unstranded". The inputs table says "Single-ended, stranded". The restrictions say "Sequencing should be single-ended."
- The page names no tiers. See [portal audits](portal-audits.md).

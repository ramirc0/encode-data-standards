# Long-read RNA-seq: standards

[Root](../../README.md) / [Transcription](../README.md) / [Long-read RNA-seq](README.md) / Standards

Source: [Long Read RNA-seq Data Standards and Processing Pipeline](https://www.encodeproject.org/rna-seq/long-read-rna-seq/), no update date ([snapshot](../../sources/pages/rna-seq__long-read-rna-seq.md)). The page states no ENCODE phase. Its annotations (GENCODE V29 and M21) match the other ENCODE4 pipelines.

Scope: PacBio or Oxford Nanopore libraries from full-length cDNA or RNA transcripts with a poly(A) tail.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Replicates | 2 or more | should |
| EN-TEx samples | May be exempt from the replicate rule | may be exempted |
| Input reads | Full-length reads. PacBio reads are circular-consensus reads with adapters and poly(A) tails removed. | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 300 bp minimum | should |
| Platform | PacBio or Oxford Nanopore | stated |
| Assembly | GRCh38 or mm10 | stated |
| Annotation | GENCODE V29 or M21 | stated |

## Graded metrics

| Status | Sequencing depth | Mapping rate | Replicate concordance, Spearman | GENCODE genes detected |
|---|---|---|---|---|
| Good | ≥ 600,000 [FLNC](../../GLOSSARY.md#read-depth-units) reads per replicate | ≥ 90% mapped reads | ≥ 0.8 | ≥ 8,000 per replicate |
| Acceptable | 400,000-600,000 FLNC reads per replicate | 60-90% mapped reads | 0.6-0.8 | 4,000-8,000 per replicate |
| Poor | < 400,000 FLNC reads per replicate | < 60% mapped reads | < 0.6 | < 4,000 per replicate |

The footnote on the Acceptable and Poor gene counts reads:

> Exemptions may be made for samples where supporting short read RNA-seq data is available to validate the low gene count, given that short read samples are from the same cell type/cell line and pass all ENCODE standards

## Pipeline filters

TranscriptClean corrects the alignments. The pipeline then removes reads with one or more unannotated noncanonical splice junctions and all non-primary alignments.

## Conflicts and gaps

- Each tier edge (600,000; 90%; 0.8; 8,000) appears in two adjacent rows. The page does not say which row owns the edge.

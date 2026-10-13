# scRNA-seq Data Standards and Processing Pipeline

> Snapshot of <https://www.encodeproject.org/data-standards/encode4-single-cell-rna/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# scRNA-seq Data Standards and Processing Pipeline

## Assay overview

scRNA-seq measures the quantity and sequences of ribonucleic acid material at a single-cell or single-nucleus resolution.

## Menu

[Pipeline overview](https://www.encodeproject.org/data-standards/encode4-single-cell-atac/#overview)

- 
- [Input files](https://www.encodeproject.org/data-standards/encode4-single-cell-atac/#inputs)
- [Output files](https://www.encodeproject.org/data-standards/encode4-single-cell-atac/#outputs)
- [References](https://www.encodeproject.org/data-standards/encode4-single-cell-atac/#references)

[Pipeline processing restrictions](https://www.encodeproject.org/data-standards/encode4-bulk-rna/#pipeline-restrictions)

[Data quality standards](https://www.encodeproject.org/data-standards/encode4-bulk-rna/#standards)

## Pipeline overview

The ENCODE single-cell / single-nucleus RNA-seq pipeline was developed by the Wold lab at Caltech. The original documentation for this pipeline, which is duplicated in part below, is available [here](https://docs.google.com/document/d/1v-qmVc8DqkM09Ehors3j7SKGhrZ8hvDwjlq00wjLvEw/edit?tab=t.0).

There are several types of short-read single-cell RNA-seq protocols intended to be sequenced by Illumina sequencers data currently hosted at the ENCODE DCC.

We have single cell RNA-seq, single nucleus RNA-seq and combined multiome single nucleus ATAC-seq and RNA-seq.

We have 10x based assays in both RNA-seq and multiome (simultaneous ATAC and RNA-seq) formats. There is also Parse Biosystems Split-Seq combinatorial barcode labeled single cell RNA-seq libraries.

The different versions of the 10x technology are sufficiently similar that the different versions of the RNA-seq and the multiome chemistry can use the same snakemake pipeline, with only needing to adjust a few parameters. However the Parse Split-Seq method requires some extra steps to do thinks like merge the two different type of primers. The different primers have different barcodes attached to them but are loaded into the same initial well and logically indicate the same sample, so it is usually simplest treat them as a combined count for that sample.

#### Pipeline schematic

[View the current instance of this pipeline](https://www.encodeproject.org/pipelines/ENCPL257SYI/)

![](https://www.encodeproject.org/images/63f2c928-ea07-4a3c-93df-c993983fb133/@@download/attachment/ENCPL257SYI.png)

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|----|----|----|----|
| [fastq](https://www.encodeproject.org/help/file-formats/#fastq) | reads | G-zipped scRNA-seq reads | Reads must meet the criteria outlined in the [Uniform Processing Pipeline Restrictions](#pipeline-restrictions). |
| tar | genome index |  |  |

The workflow as a whole needs to have the following information to run

- Fastqs files which contains sequence and bar code information.
  - 10x RNA-seq requires paired-end sequencing runs containing two reads. One read contains at minimum the cellular barcode and UMI. The other read contains the sequence.
- Information about the expected barcodes
- Genome index to align against. To be compatible with the rest of ENCODE we plan on using the full ENCODE annotation set used by the RNA-seq bulk annotation.
- Length of UMI and bar codes.
- Is the protocol stranded and if it is which strand the reads are from.
- Is the protocol cellular or nuclear. Cellular protocols primarily detect spliced transcripts, while Nuclear include unprocessed transcripts. As a result nuclear protocols should include introns when mapping reads.

#### Outputs:

| **File format** | **Information contained in file** | **File description** |
|----|----|----|
| [bam](https://www.encodeproject.org/help/file-formats/#bam) | **alignments** | Reads mapped to the genome. |
| tar | sparse gene count matrix of all reads | Filtered sparse gene counts of reads including multimapping reads |
| tar | sparse gene count matrix of unique reads | Filtered sparse gene counts of only uniquely mapping reads |
| tar | unfiltered sparse gene count matrix of all reads | Unfiltered sparse gene counts of reads including multimapping reads |
| tar | unfiltered sparse gene count matrix of unique reads | Unfiltered sparse gene counts of only uniquely mapping reads |
| tar | unfiltered sparse splice junction count matrix of unique reads | Sparse splice junction count matrix of uniquely mapping reads |

Each matrix output in the above table is bundled in a tar which includes the following contents:

- Archive “manifest” tab-separated list of name value pairs containing:
  - Manifest_type (MatrixMarketGeneArchive_v1)
  - Experiment accession (ENCSRxxxxxx)
  - Experiment Description
  - Library accession (ENCLBxxxxx)
  - File hashes as needed.
- Barcode label file
- Feature label file
- Gene (spliced) or GeneFull_Ex50pAS (intron including if 50% of the read overlaps an exon) sparse matrix market count matrix

The following summary quality metrics are also generated by the pipeline.

- STAR bulk mapping statistics
- STAR Solo statistics
- UMI versus count plot
- Gene Count QC plots

### References

#### Genomic References

| **ENCODE Alias** | **Species** |
|----|----|
| [encode:starsolo-mm10-M21-male-index](https://www.encodeproject.org/files/ENCFF096RQH/) | Mouse |
| [encode:starsolo-GRCh38-V29-male-index](https://www.encodeproject.org/files/ENCFF335CCT/) | Human |

#### Links and Publications

Find data generated by this pipeline: [Search results](https://www.encodeproject.org/search/?type=Experiment&analyses.pipelines=/pipelines/ENCPL257SYI/)

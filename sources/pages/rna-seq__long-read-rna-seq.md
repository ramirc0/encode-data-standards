# Long Read RNA-seq Data Standards and Processing Pipeline

> Snapshot of <https://www.encodeproject.org/rna-seq/long-read-rna-seq/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# Long Read RNA-seq Data Standards and Processing Pipeline

### Assay Overview

Alternative splicing is widely acknowledged to be a crucial regulator of gene expression and is a key contributor to both normal developmental processes and disease states. Long read RNA-seq can sequence individual transcript molecules in full, making it possible to see exactly which splice junctions were present in context. Long read RNA-seq can be used to characterize isoforms on a transcriptome-wide scale, and also to perform quantification on the gene and isoform level.

### Menu

[Pipeline overview ](#overview)

- [Input files](#inputs)
- [Output files](#outputs)
- [References](#references)

[Pipeline processing restrictions](#pipeline-restrictions)

[Data quality standards](#standards)

### Pipeline overview

The ENCODE long read RNA-seq pipeline can be used for PacBio or Oxford Nanopore libraries generated from full length cDNA/RNA transcripts with a poly-(A) tail. For effective quantification, see the read depth requirements outlined in the Current Standards section. The long red RNA-seq pipeline was developed by Ali Mortazavi's group at the University of California, Irvine.

Pipeline Schematic

View the current instance of [this pipeline](https://www.encodeproject.org/ENCPL075LUJ/) on the ENCODE Portal.

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| fastq | reads | Full-length long read RNA-seq reads. For PacBio: Circular-consensus processed reads with adapters and poly-(A) tail removed. | Reads must meet the criteria outlined in the [Uniform Processing Pipeline Restrictions](https://www.encodeproject.org/data-standards/rna-seq/long-rnas/).  |
| database, tsv, fasta, gtf | reference files | Default reference genome, transciptome annotation file from GENCODE, and variant file from dbSNP. | See the References section below for details. |

#### \
Outputs:

<table>
<thead>
<tr>
<th style="text-align: left;"><strong>File format</strong></th>
<th style="text-align: left;"><strong>Information contained in file</strong></th>
<th><strong>File description</strong></th>
<th><strong>Notes</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">bam</td>
<td style="text-align: left;">unfiltered alignments</td>
<td>Produced by mapping reads to the genome.</td>
<td>This file contains the original Minimap2 alignments. No modifications have been made to the read sequences at this point.</td>
</tr>
<tr>
<td style="text-align: left;">bam</td>
<td style="text-align: left;">alignments</td>
<td>Produced by performing reference-based error correction of the unfiltered alignments (TranscriptClean).</td>
<td>Reads that contain one or more un-annotated noncanonical splice junctions are removed, as are any non-primary read alignments.</td>
</tr>
<tr>
<td style="text-align: left;">tsv</td>
<td style="text-align: left;">transcript quantifications</td>
<td>Non-normalized transcript counts.</td>
<td></td>
</tr>
<tr>
<td colspan="4" style="text-align: center;">The pipeline also produces <a href="https://www.encodeproject.org/rna-seq/long-rnas-encode4/#standards">quality metrics</a>, including <a href="https://www.encodeproject.org/data-standards/terms/#concordance">Spearman correlation</a> and read depth. </td>
</tr>
</tbody>
</table>

### References

#### Obtaining Full-Length Reads

Before aligning long read RNA-seq reads to the genome, it is important to apply platform-specific steps to make sure that the reads are full-length and to trim off adaptors. See protocols for [human](https://www.encodeproject.org/documents/41934f5d-1f41-4ee6-84a4-8781d15cc590/@@download/attachment/ENCODE%20Long%20Read%20RNA-Seq%20Analysis%20Pipeline%20%28Human%29.pdf) or [mouse](https://www.encodeproject.org/documents/a84b4146-9e2d-4121-8c0c-1b6957a13fbf/@@download/attachment/ENCODE%20Long%20Read%20RNA-Seq%20Analysis%20Pipeline%20%28Mouse%29.pdf) samples to see further details for performing circular consensus correction on raw PacBio subreads, and for trimming adaptors and poly-(A) tails from the PacBio circular consensus output.

#### Genomic References

View the [mapping assembly](https://www.encodeproject.org/ENCSR425FOI/) and [genome annotation](https://www.encodeproject.org/references/ENCSR884DHJ/) reference files used in this pipeline.

#### Additional reference files

View the [reference variants, splice junctions, and TALON.db](https://www.encodeproject.org/ENCSR494SJR) files used in this pipeline.

View the [SIRV spike-in reference files](https://www.encodeproject.org/references/ENCSR089MWE/) used in the long read RNA-seq datasets.

#### Links and Publications

View the [GitHub repo](https://github.com/ENCODE-DCC/long-read-rna-pipeline) for the ENCODE long-read RNA-seq pipeline.

### Uniform Processing Pipeline Restrictions

- Read length should be a minimum of 300 base pairs. 
- PacBio and Oxford Nanopore long read platforms are supported by this pipeline.
- Alignment files are mapped to either the GRCh38 or mm10 sequences.
- Gene and transcript quantification files are annotated to either GENCODE V29 or M21.

### Current Standards

- Experiments should have two or more [replicates](https://www.encodeproject.org/data-standards/terms/#replication). Assays performed using EN-TEx samples may be exempted due to limited availability of experimental material.

- Experiment must pass routine metadata audits in order to be released.

<table>
<thead>
<tr>
<th style="text-align: center;">Resulting data status</th>
<th style="text-align: center;">Sequencing depth</th>
<th style="text-align: center;">Mapping rate</th>
<th style="text-align: center;">Replicate concordance (Spearman correlation)</th>
<th style="text-align: center;">Number of GENCODE genes detected</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">Good</td>
<td style="text-align: center;">≥ 600,000 FLNC* reads/replicate</td>
<td style="text-align: center;">≥ 90% mapped reads</td>
<td style="text-align: center;"> ≥ 0.8</td>
<td style="text-align: center;">≥ 8,000 genes detected/replicate</td>
</tr>
<tr>
<td style="text-align: center;">Acceptable</td>
<td style="text-align: center;">400,000-600,000 FLNC reads/replicate</td>
<td style="text-align: center;">60-90% mapped reads</td>
<td style="text-align: center;">0.6-0.8</td>
<td style="text-align: center;">4,000-8,000 genes detected/replicate**</td>
</tr>
<tr>
<td style="text-align: center;">Poor</td>
<td style="text-align: center;">&lt; 400,000 FLNC reads/replicate</td>
<td style="text-align: center;">&lt; 60% mapped reads</td>
<td style="text-align: center;">&lt; 0.6</td>
<td style="text-align: center;">&lt; 4,000 genes detected/replicate**</td>
</tr>
<tr>
<td colspan="5" style="text-align: center;"><p>* full-length nonchimeric reads</p>
<p>** Exemptions may be made for samples where supporting short read RNA-seq data is available to validate the low gene count, given that short read samples are from the same cell type/cell line and pass all ENCODE standards   </p></td>
</tr>
</tbody>
</table>

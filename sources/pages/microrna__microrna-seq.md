# microRNA-seq Data Standards and Processing Pipeline

> Snapshot of <https://www.encodeproject.org/microrna/microrna-seq/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# microRNA-seq Data Standards and Processing Pipeline

### Assay Overview

MicroRNA-seq allows researchers to characterize and quantify the expression and prevalence of the small non-coding RNA moleccules known as microRNA. These molecules may play an important role in diseases, and significant effort is underway to understand their effects across a variety of tissue types and cells. For effective processing, the average insert size must be no more than 30 bases.

*Updated May 2017*

### Menu

[Pipeline overview](https://www.encodeproject.org/microrna/microrna-seq/#overview)

- [Input files](https://www.encodeproject.org/microrna/microrna-seq/#inputs)
- [Output files](https://www.encodeproject.org/microrna/microrna-seq/#outputs)
- [References](https://www.encodeproject.org/microrna/microrna-seq/#references)

[Pipeline processing restrictions](https://www.encodeproject.org/microrna/microrna-seq/#restrictions)

[Data quality standards](https://www.encodeproject.org/microrna/microrna-seq/#standards)

### Pipeline Overview

The ENCODE miRNA-seq pipeline can be used for libraries generated from miRNAs, size-selected from total RNA to be 30 bp or smaller. . The microRNA-seq pipeline was developed by Ali Mortazavi's group at UC Irvine.

#### Pipeline Schematic

View the current instance of [this pipeline](https://www.encodeproject.org/pipelines/ENCPL444CYA/)

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| [fastq](https://www.encodeproject.org/help/file-formats/#fastq) | reads | microRNA-seq reads from single-end libraries. | Reads must meet the criteria outlined in the [Uniform Processing Pipeline Restrictions](https://www.encodeproject.org/microrna/microrna-seq/#restrictions).  |
|  gtf |  genome annotation | Default genome annotation file is the microRNA subset from GENCODE.  | Human experiments use GENCODE V24, while mouse use GENCODE M4. |

#### Outputs:

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
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bam">bam</a></td>
<td style="text-align: left;"><strong>alignments</strong></td>
<td>Produced by mapping reads to the genome.</td>
<td>Reads are trimmed using a proprietary version of cutAdapt, linked below under References.</td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;">signal</td>
<td>Normalized RNA-seq signal</td>
<td>Signals are generated for both the plus and minus strands and for unique reads and unique+multimapping reads.</td>
</tr>
<tr>
<td style="text-align: left;">tsv</td>
<td style="text-align: left;">gene (microRNA) quantifications</td>
<td>Non-normalized counts.</td>
<td></td>
</tr>
<tr>
<td colspan="4" style="text-align: center;"><a href="https://www.encodeproject.org/microrna/microrna-seq/#standards">Quality control metrics</a> are also generated, including gene quantification level and read depth.</td>
</tr>
</tbody>
</table>

The mapping of the reads is done using the STAR aligner. STAR is also used to obtain counts of miRNAs (number of reads mapped to each miRNA gene in the annotations file). The miRNA counts can be normalized, for example by library size, to obtain counts-per-million for downstream analysis.

### References

#### Adapter Trimming

An important step before aligning miRNA-seq reads is the trimming of adapters. The raw sequencing reads for samples generated for this pipeline contain 3’ and 5’ adapters. The links below contain details of the pipeline including information about the adapter sequences used and an example script to trim these adapters:

- [View](https://github.com/rm2011/miRNA-seq-adapters) the adapter sequences and an example Cutadapt script (version 1.7.1 used to generate data by this pipeline) to trim the adapter sequences.

- [View](https://github.com/rm2011/ENCODE_miRNA-seq_STAR_parameters/blob/master/ENCODE_miRNA-seq_STAR_parameters.pdf) the index generation step (using comprehensive GENCODE annotations) and the alignment step of trimmed reads Using STAR (using miRNA subset of GENCODE annotations).

#### Genomic References

View the [mapping assembly](https://www.encodeproject.org/references/ENCSR425FOI/) and [genome annotation](https://www.encodeproject.org/references/ENCSR884DHJ/) reference files used in this pipeline

##### STAR Indices

This pipeline requires both assembly information for the species of interest and a gene reference. STAR creates an index for use in the mapping step. Please note that the comprehensive GENCODE references are used for the index generation step, while the miRNA subsets of the corresponding annotations are used at the alignment step to obtain miRNA counts by STAR.

[The miRNA subset of GENCODE v24 for human](https://www.encodeproject.org/references/ENCSR564GPK/) (used at the mapping step by STAR)

[The miRNA subset of GENCODE M4 for mouse](https://www.encodeproject.org/references/ENCSR021VAV/) (used at the mapping step by STAR)

#### Links and Publications

Find data generated by the pipeline [here](https://www.encodeproject.org/search/?type=Experiment&assay_title=microRNA-seq&files.analysis_step_version.analysis_step.pipelines.title=microRNA-seq+pipeline)

### Uniform Processing Pipeline Restrictions

- The mapped read length should be a minimum of 16 base pairs. 
- Sequencing should be single-ended. 
- All Illumina platforms are supported for use in the uniform pipeline; colorspace (SOLiD) are not supported.
- Library insert size range must be \<30 and must be indicated in the metadata. 
- Alignment files are mapped to either the [GRCh38 or mm10](https://www.encodeproject.org/references/ENCSR425FOI/) sequences.
- Gene and transcript quantification files are annotated to either [GENCODE V24 or M4](https://www.encodeproject.org/references/ENCSR884DHJ/).

### Current Standards

- Experiments should have two or more [replicates](https://www.encodeproject.org/data-standards/terms/#replication). Assays performed using EN-TEx samples may be exempted due to limited availability of experimental material. 
- Each replicate should have a minimum of 2 million** **aligned reads.
- The gene level quantification should have a [Pearson correlation](https://www.encodeproject.org/data-standards/terms/#concordance) of ≥0.85.
- The experiment must pass routine metadata audits in order to be released. 

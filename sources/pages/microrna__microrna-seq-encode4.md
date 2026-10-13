# microRNA-seq Data Standards and Processing Pipeline (E4)

> Snapshot of <https://www.encodeproject.org/microrna/microrna-seq-encode4/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# microRNA-seq Data Standards and Processing Pipeline (E4)

### Assay Overview

MicroRNA-seq allows researchers to characterize and quantify the expression and prevalence of the small non-coding RNA moleccules known as microRNA. These molecules may play an important role in diseases, and significant effort is underway to understand their effects across a variety of tissue types and cells. For effective processing, the average insert size must be no more than 30 bases.

*Updated May 2017*

### Menu

[Pipeline overview](#overview)

- [Input files](#inputs)
- [Output files](https://www.encodeproject.org/microrna/microrna-seq-encode4/#outputs)
- [References](#references)

[Pipeline processing restrictions](https://www.encodeproject.org/microrna/microrna-seq-encode4/#restrictions)

[Data quality standards](#standards)

### Pipeline Overview

The ENCODE miRNA-seq pipeline can be used for libraries generated from miRNAs, size-selected from total RNA to be 30 bp or smaller. The microRNA-seq pipeline was developed by Ali Mortazavi's group at UC Irvine.

Pipeline Schematic

View the current instance of [this pipeline](https://www.encodeproject.org/pipelines/ENCPL280YDY/).

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| fastq | **reads** | microRNA-seq reads from single-end libraries. | Reads must meet the criteria outlined in the [Uniform Processing Pipeline Restrictions](#pipeline-restrictions).  |
| gtf, tar | **reference files** | Genome annotations, adapter sequences, genome indices | See the References section below for details. |

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
<td style="text-align: left;">bam</td>
<td style="text-align: left;"><strong>alignments</strong></td>
<td>Produced by mapping reads to the genome.</td>
<td>Reads are trimmed using a proprietary version of cutAdapt, linked below under References. </td>
</tr>
<tr>
<td style="text-align: left;">bigWig</td>
<td style="text-align: left;"><strong>signal</strong></td>
<td>Normalized RNA-seq signal</td>
<td>Signals are generated for both the plus and minus strands and for unique reads and unique+multimapping reads. </td>
</tr>
<tr>
<td style="text-align: left;">tsv</td>
<td style="text-align: left;"><strong>gene (microRNA) quantifications</strong></td>
<td>Non-normalized counts.</td>
<td></td>
</tr>
<tr>
<td colspan="4" style="text-align: center;"><a href="#standards">Quality control metrics</a> are also generated, including gene quantification level and read depth. </td>
</tr>
</tbody>
</table>

The mapping of the reads is done using the STAR aligner. STAR is also used to obtain counts of miRNAs (number of reads mapped to each miRNA gene in the annotations file). The miRNA counts can be normalized, for example by library size, to obtain counts-per-million for downstream analysis.

### References

#### Adapter Trimming

An important step before aligning miRNA-seq reads is the trimming of adapters. The raw sequencing reads for samples generated for this pipeline contain 3’ and 5’ adapters. The links below contain details of the pipeline including information about the adapter sequences used and an example script to trim these adapters:

- [View](https://github.com/sorenar/miRNA-seq-adapters) the adapter sequences and an example Cutadapt script (version 1.7.1 used to generate data by this pipeline) to trim the adapter sequences.

- [View](https://www.encodeproject.org/documents/b4ec4567-ac4e-4812-b2bd-e1d2df746966/@@download/attachment/ENCODE_miRNA-seq_STAR_parameters_v2.pdf) the index generation step (using comprehensive GENCODE annotations) and the alignment step of trimmed reads Using STAR (using miRNA subset of GENCODE annotations).

#### Genomic References

View the mapping assembly and [genome annotation](https://www.encodeproject.org/references/ENCSR884DHJ/) reference files used in this pipeline.

#### STAR Indices

This pipeline requires both assembly information for the species of interest and a gene reference. STAR creates an index for use in the mapping step. Please note that the comprehensive GENCODE references are used for the index generation step, while the miRNA subsets of the corresponding annotations are used at the alignment step to obtain miRNA counts by STAR.

The miRNA subset of [GENCODE V29](https://www.encodeproject.org/files/ENCFF123QLG/)[ ](https://www.encodeproject.org/references/ENCSR564GPK/)for human (used at the mapping step by STAR)

The miRNA subset of [GENCODE M21](https://www.encodeproject.org/files/ENCFF795AAA/) for mouse (used at the mapping step by STAR)

#### Links and Publications

Find data generated by the pipeline [here](https://www.encodeproject.org/search/?type=Experiment&assay_title=microRNA-seq&files.analysis_step_version.analysis_step.pipelines.title=microRNA-seq+pipeline).

### Uniform Processing Pipeline Restrictions

- The mapped read length should be a minimum of 16 base pairs. 
- If paired-ended data is used as input, the pipeline will only process read 1.
- All Illumina platforms are supported for use in the uniform pipeline; colorspace (SOLiD) are not supported.
- The microRNAs protocol involves a gel size selection of the fragments that correspond to insert length \< 30.
- Alignment files are mapped to either the [GRCh38 or mm10](https://www.encodeproject.org/references/ENCSR425FOI/) sequences.
- Gene and transcript quantification files are annotated to either [GENCODE V29 or M21](https://www.encodeproject.org/references/ENCSR884DHJ/).

### Current Standards

- Experiments should have two or more [replicates](https://www.encodeproject.org/data-standards/terms/#replication). Assays performed using EN-TEx samples may be exempted due to limited availability of experimental material.
- The experiment must pass routine metadata audits in order to be released. 

<table>
<thead>
<tr>
<th style="text-align: center;">Resulting data status</th>
<th style="text-align: center;">Sequencing depth</th>
<th style="text-align: center;">Replicate concordance (Spearman correlation)</th>
<th style="text-align: center;">Number of miRNAs expressed</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: center;">Good</td>
<td style="text-align: center;">≥ 5 million reads mapped to the miRNA subset of genome (unique + multimap &lt; 10)</td>
<td style="text-align: center;"> ≥ 0.85</td>
<td style="text-align: center;">≥ 300 miRNAs at minimum 2cpms per replicate</td>
</tr>
<tr>
<td style="text-align: center;">Acceptable</td>
<td style="text-align: center;">3-5 million reads mapped to the miRNA subset of the genome (unique + multimap &lt; 10) in either replicate</td>
<td style="text-align: center;">0.8-0.84</td>
<td style="text-align: center;">200-300 miRNAs at minimum 2cpms in either replicate*</td>
</tr>
<tr>
<td style="text-align: center;">Poor</td>
<td style="text-align: center;">&lt; 3 million reads mapped to the miRNA subset of the genome (unique + multimap &lt; 10) in either replicate</td>
<td style="text-align: center;">&lt; 0.8</td>
<td style="text-align: center;">&lt; 200 miRNAs at minimum 2cpms in either replicate*</td>
</tr>
<tr>
<td colspan="4" style="text-align: center;">* Exemptions may be made for samples with higher concordance (Spearman correlation &gt; 0.85) or deeper sequencing depth (&gt; 5M) in the case of EN-TEx samples with one replicate, or in the case of known low gene counts from short RNA-seq data obtained from the same cell line/tissue which has passed ENCODE standards.</td>
</tr>
</tbody>
</table>

# RAMPAGE and CAGE Data Standards and Processing Pipeline

> Snapshot of <https://www.encodeproject.org/data-standards/rampage/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# RAMPAGE and CAGE Data Standards and Processing Pipeline

### Assay Overview

RAMPAGE (RNA Annotation and Mapping of Promoters for the Analysis of Gene Expression) is a sequencing approach designed to identify transcription start sites (TSSs) at base-pair resolution, quantify their expression, and characterize their transcripts. The assay uses direct cDNA evidence to link specific genes and their regulatory TSSs [<sup>1</sup>](https://www.encodeproject.org/rampage/#references)*.*\
 

*Updated June 2017*

### Menu

[Pipeline overview](https://www.encodeproject.org/rampage/#overview)

- [Input files](https://www.encodeproject.org/rampage/#inputs)

- [Output files](https://www.encodeproject.org/rampage/#outputs)

- ​[References](https://www.encodeproject.org/rampage/#references)

[Pipeline processing restrictions](https://www.encodeproject.org/rampage/#restrictions)

[Data quality standards](https://www.encodeproject.org/rampage/#standards)

### Pipeline Overview

The RAMPAGE pipeline was developed as a part of the [ENCODE Uniform Processing Pipelines](https://www.encodeproject.org/pipelines/) series. The full RAMPAGE pipeline code is freely available on [Github](https://github.com/ENCODE-DCC/long-rna-seq-pipeline/tree/master/dnanexus/rampage) and can be run on [DNAnexus](https://platform.dnanexus.com/projects/BKpvFg00VBPV975PgJ6Q03v6/data/) (link requires account creation) at their current pricing.

The ENCODE-developed pipeline for RAMPAGE assays is also used for the analysis of CAGE (Cap Analysis Gene Expression), and can process libraries generated using rRNA-depleted total RNA \>200 nucleotides in size. The CAGE method is intended to provide information on the 5' end of mRNA, and by extensions, TSSs; RAMPAGE is an improvement of the CAGE method [<sup>1</sup>.](https://www.encodeproject.org/rampage/#references)

#### Pipeline schematic

View the current instance of [this pipeline](https://www.encodeproject.org/pipelines/ENCPL122WIM/)

#### Inputs:

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
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#fastq">fastq</a></td>
<td style="text-align: left;">reads</td>
<td>Paired-end, g-zipped DNA-sequencing reads</td>
<td>Reads must meet the criteria outlined under the <a href="https://www.encodeproject.org/rampage/#restrictions">Uniform Processing Pipeline Restrictions</a>.</td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#fastq">fastq</a></td>
<td style="text-align: left;">control reads</td>
<td>A Bismark-transformed, Bowtie-indexed genome</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;">tar</td>
<td style="text-align: left;">genome index</td>
<td>G-zipped STAR genome index</td>
<td></td>
</tr>
<tr>
<td colspan="4" style="text-align: center;">View RAMPAGE <a href="https://www.encodeproject.org/documents/28a9fcd3-1a6a-4c88-9e30-bd4e43afce42/@@download/attachment/RAMPAGE_Library_Structure_2.pdf">library structure overview</a>.</td>
</tr>
</tbody>
</table>

#### Outputs:

<table>
<tbody>
<tr>
<td style="text-align: left;">File format</td>
<td style="text-align: left;"><strong>Information contained in file</strong></td>
<td><strong>File description</strong></td>
<td><strong>Notes</strong></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bam">bam</a></td>
<td style="text-align: left;">alignments</td>
<td>Produced by mapping reads to the genome</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;"><strong>signal</strong></td>
<td>Signals are generated both for unique reads and for unique+multimapping reads.</td>
<td>If data are stranded, unique and unique+multimapping signals are produced for each strand (minus and plus). If the data are unstranded, signals are created without attention given to individual strands.</td>
</tr>
<tr>
<td style="text-align: left;">bed tss_peak, bigBed tss_peak, gff</td>
<td style="text-align: left;">transcription start sites (TSS)</td>
<td>Raw peak files for each replicate</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;">bed idr_peak, bigBed idr_peak</td>
<td style="text-align: left;">consensus transcription start sites (TSS)</td>
<td>IDR comparison of TSSs generated from individual replicates.</td>
<td><a href="https://www.encodeproject.org/data-standards/terms/#concordance">Irreproducible Discovery Rate (IDR)</a>: compares two peak files (bed), typically from a pair of replicates of the same experiment, allowing validation of the experiment methods and reducing noise in the final results. </td>
</tr>
<tr>
<td style="text-align: left;">tsv</td>
<td style="text-align: left;">gene quantifications</td>
<td></td>
<td></td>
</tr>
<tr>
<td colspan="4" style="text-align: left;"><a href="https://www.encodeproject.org/rampage/#standards">Quality control metrics</a> are also generated, comparing two TSS quantification files and calculating the Mean Absolute Deviation and correlations.</td>
</tr>
</tbody>
</table>

### References

#### Genomic References

View the [mapping assembly](https://www.encodeproject.org/references/ENCSR425FOI/) and [genome annotation](https://www.encodeproject.org/references/ENCSR884DHJ/) reference files used in this pipeline

These pipelines require both assembly information for the species of interest and a gene reference. Each of the main programs, [TopHat](https://www.encodeproject.org/references/ENCSR641UDW/), [STAR](https://www.encodeproject.org/references/ENCSR314WMD/), and [RSEM](https://www.encodeproject.org/references/ENCSR219BJA/) create an index for use in subsequent steps. More information on the use of RSEM is available [here](https://www.encodeproject.org/documents/0c78ea4b-9392-421b-a6f3-6c858b6002aa/@@download/attachment/RSEM_Documentation.pdf).

#### Links and Publications

Find [RAMPAGE](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.title=RAMPAGE+or+CAGE+%28paired-end%29&assay_title=RAMPAGE) and [CAGE](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.title=RAMPAGE+or+CAGE+%28paired-end%29&assay_title=CAGE) data generated by this pipeline\
Explore publications related to [RAMPAGE](https://www.encodeproject.org/search/?searchTerm=rampage&type=Publication) and [CAGE](https://www.encodeproject.org/search/?searchTerm=cage&type=Publication)

1\. Batut, Philippe et al. “[High-fidelity promoter profiling reveals widespread alternative promoter usage and transposon-driven developmental gene expression](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3530677/).” *Genome Research* 23.1 (2013): 169–180. *PMC*. Web. 9 Feb. 2016.

### Uniform Processing Pipeline Restrictions

- Sequencing must be paired-ended.
- The read length should be a minimum of 50 base pairs.
- All Illumina platforms are supported for use in the uniform pipeline; colorspace (SOLiD) are not supported.
- Barcodes and [spike-ins](https://www.encodeproject.org/references/ENCSR704RSS/), if present in the fastq, must be indicated.
- Each RAMPAGE or CAGE experiment **must** have a corresponding RNA-seq experiment as a control. 
- Library insert size range must be indicated.
- Alignment files are mapped to either the [GRCh38 or mm10](https://www.encodeproject.org/references/ENCSR425FOI/) sequences.
- Gene and transcript quantification files are annotated to either [GENCODE V24 or M4](https://www.encodeproject.org/references/ENCSR884DHJ/).
- For IDR comparison, the experiment must have two and *only* two replicates.

### Current Standards (RAMPAGE)

Experimental guidelines for RAMPAGE experiments can be found [here](https://www.encodeproject.org/about/experiment-guidelines/).

- Experiments should have at least two [replicates](https://www.encodeproject.org/data-standards/terms/#replication).
- Each replicate should have 20 million [aligned reads](https://www.encodeproject.org/data-standards/terms/#read-depth). Older projects aimed for 10 million [aligned reads](https://www.encodeproject.org/data-standards/terms/#read-depth).
- Each RAMPAGE experiment should have a corresponding RNA-seq experiment as a control.
- Replicate concordance: the gene level quantification should have a [Spearman correlation](https://www.encodeproject.org/data-standards/terms/#concordance) of \>0.9 between isogenic replicates and \>0.8 between anisogenic replicates.
- The experiment must pass routine metadata audits in order to be released.

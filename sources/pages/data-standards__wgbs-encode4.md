# Whole-Genome Bisulfite Sequencing Data Standards and gemBS-based Processing Pipeline

> Snapshot of <https://www.encodeproject.org/data-standards/wgbs-encode4/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# Whole-Genome Bisulfite Sequencing Data Standards and gemBS-based Processing Pipeline

### Assay Overview

Whole Genome Bisulfite Sequencing is used to investigate DNA methylation patterns to base granularity. A bisulfite treatment converts cytosines into uracils, but leaves methylated cytosines unchanged. After mapping bisulfite sequencing reads against a GemBS-transformed genome, the pipeline extracts the CpG, CHG, and CHH methylation patterns genome-wide. CpG sites are palindromic, consisting of a cytosine nucleotide followed by a guanine, and are highly prone to methylation. Methylation increases the possibility of mutation in which cytosine* *is deaminated and becomes thymine*. *Methylation can also occur at CHG and CHH sites, where "H" is A, C, or T (Guo et al. *Characterizing the strand-specific distribution of non-CpG methylation in human pluripotent cells*, Nucleic Acids Res (2014) 42 (5): 3009-3016).

*Updated May 2021*

### Menu

[Pipeline overview](https://www.encodeproject.org/data-standards/wgbs-encode4#overview)

- [Input files](https://www.encodeproject.org/data-standards/wgbs-encode4#inputs)
- [Output files](https://www.encodeproject.org/data-standards/wgbs-encode4#outputs)
- [References](https://www.encodeproject.org/data-standards/wgbs-encode4#references)

[Pipeline processing restrictions](https://www.encodeproject.org/data-standards/wgbs-encode4#restrictions)

[Data quality standards](https://www.encodeproject.org/data-standards/wgbs-encode4#standards)

### Pipeline Overview

The WGBS pipeline was developed as a part of the [ENCODE Uniform Processing Pipelines](https://www.encodeproject.org/pipelines/) series [<sup>1</sup>](https://www.encodeproject.org/data-standards/wgbs-encode4#references). The full WGBS pipeline code is available on [Github](https://github.com/ENCODE-DCC/wgbs-pipeline) and can be run on various platforms via [Caper](https://github.com/ENCODE-DCC/caper). It uses gemBS[<sup>2</sup>](https://www.encodeproject.org/data-standards/wgbs-encode4#references) for alignment and methylation extraction.

#### Pipeline Schematic

View the [current schematic ](https://www.encodeproject.org/pipelines/ENCPL182IUX/)

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| [fastq](https://www.encodeproject.org/help/file-formats/#fastq) | reads | Gzipped DNA-sequencing reads | Reads must meet the criteria outlined under the [Uniform Processing Pipeline Restrictions](https://www.encodeproject.org/data-standards/wgbs-encode4#restrictions). |
| tar | genome index | Collection of index files used by gemBS [<sup>2</sup>](https://www.encodeproject.org/data-standards/wgbs-encode4/#references) |  |
| tsv | chromosome sizes | chromosome sizes for the mapping assembly |  |

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
<td style="text-align: left;">alignments<strong> </strong></td>
<td>Produced by mapping reads to the genome</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;"><strong>CpG sites coverage</strong></td>
<td>Read coverage at CpG sites</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;">plus strand methylation state at CpG</td>
<td>Percent methylation at plus-strand CpG sites</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;">minus strand methylation state at CpG</td>
<td>Percent methylation at minus-strand CpG sites</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;">bed9+ and bigBed9+</td>
<td style="text-align: left;">methylation state at CpG</td>
<td>Percent methylation at CpG sites (see Description of bed9+ file below this table).</td>
<td>CpG is a sequence in which a cytosine is followed by a guanine.</td>
</tr>
<tr>
<td style="text-align: left;">bed9+ and bigBed9+</td>
<td style="text-align: left;">methylation state at CHG</td>
<td>Percent methylation at CHG sites (see Description of bed9+ file below this table).</td>
<td>CHG is a sequence in which a cytosine and a guanine are separated by an adenosine, a cytosine, or a thymine.</td>
</tr>
<tr>
<td style="text-align: left;">bed9+ and bigBed9+</td>
<td style="text-align: left;">methylation state at CHH<strong>​</strong></td>
<td>Percent methylation at CHH sites (see Description of bed9+ file below this table).</td>
<td>CHH is a sequence in which a cytosine is followed by two nucleotides that may be any of adenosine, cytosine, or thymine.</td>
</tr>
<tr>
<td colspan="4" style="text-align: left;"><a href="https://www.encodeproject.org/data-standards/wgbs-encode4#standards">Quality control metrics</a> are collected from the Samtools and gemBS software suites, and <strong>Pearson correlation</strong> is calculated from the two replicates' methylation states at CpG.</td>
</tr>
</tbody>
</table>

##### Description of bed9+ file

The bed9+file contains the number of reads and the percent methylation. The first 12 columns correspond to the [ENCODE bedMethyl file format](https://www.encodeproject.org/data-standards/wgbs-encode4/#outputs) and the last 3 contain information about the genotype at the position.

Each column represents the following:

1.  Reference chromosome or scaffold
2.  Start position in chromosome
3.  End position in chromosome
4.  Name of item
5.  Score from 0-1000. Capped number of reads
6.  Strandedness, plus (+), minus (-), or unknown (?)
7.  Start of where display should be thick
8.  End of where display should be thick
9.  Color value (RGB)
10. Coverage, or number of reads
11. Percentage of reads that show methylation at this position in the genome
12. Reference genotype
13. Sample genotype
14. Quality score for genotype call

### References

#### Genomic References

View the [mapping assemblies](https://www.encodeproject.org/references/ENCSR425FOI/) (includes lambda genome for generation of comparative statistics)\
View the [gemBS reference files](https://www.encodeproject.org/references/ENCSR791ROJ/) used in this pipeline

#### Links and Publications

Find data generated by the WGBS [pipeline](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.title=gemBS)\
Explore WGBS-related publications on the portal [here](https://www.encodeproject.org/search/?searchTerm=WGBS&type=Publication)

1\. Tsuji, Junko, and Zhiping Weng. "[Evaluation of preprocessing, mapping and postprocessing algorithms for analyzing whole genome bisulfite sequencing data](https://bib.oxfordjournals.org/content/early/2015/11/30/bib.bbv103.short)." *Briefings in bioinformatics* 17.6 (2015): 938-952.

2\. Merkel, Angelika et. al. "[gemBS: high throughput processing for DNA methylation data from bisulfite sequencing](https://pubmed.ncbi.nlm.nih.gov/30137223/)" *Bioinformatics* 35.5 (2019): 737-742.

### Uniform Processing Pipeline Restrictions

- Each replicate should have 30X [coverage](https://www.encodeproject.org/data-standards/terms/#read-depth).
- The read length should be a minimum of 100 base pairs.
- Sequencing may be paired- or single-ended, as long as sequencing type is specified and paired sequences are indicated
- The sequencing platform must be indicated.
- Barcodes, if present in fastq, must be indicated.
- The pipeline maps against the [lambda genome](https://www.encodeproject.org/references/ENCSR425FOI/) as a method of control.
- Alignment files are mapped to either the [GRCh38 or mm10](https://www.encodeproject.org/references/ENCSR425FOI/) sequences.

### Current Standards

Experimental guidelines for WGBS experiments can be found [here](https://www.encodeproject.org/about/experiment-guidelines/).

- Experiments should have two or more biological [replicates](https://www.encodeproject.org/data-standards/terms/#replication); they may have two technical replicates per biological replicate. Assays performed using EN-TEx samples may be exempted due to limited availability of experimental material.

- The C to T conversion rate should be ≥98%

- The CpG quantification should have a [Pearson correlation](https://www.encodeproject.org/data-standards/terms/#concordance) of ≥0.8 for sites with ≥10X coverage.

- Sequencing may be paired- or single-ended, as long as sequencing type is specified and paired sequences are indicated.

- The experiment must pass routine metadata audits in order to be released.

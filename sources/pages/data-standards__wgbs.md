# Whole-Genome Bisulfite Sequencing Data Standards and Processing Pipeline

> Snapshot of <https://www.encodeproject.org/data-standards/wgbs/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# Whole-Genome Bisulfite Sequencing Data Standards and Processing Pipeline

### Assay Overview

Whole Genome Bisulfite Sequencing is used to investigate DNA methylation patterns to base granularity. A bisulfite treatment converts cytosines into uracils, but leaves methylated cytosines unchanged. After mapping bisulfite sequencing reads against a Bismark-transformed genome, the pipeline extracts the CpG, CHG, and CHH methylation patterns genome-wide. CpG sites are palindromic, consisting of a cytosine nucleotide followed by a guanine, and are highly prone to methylation. Methylation increases the possibility of mutation in which cytosine* *is deaminated and becomes thymine*. *Methylation can also occur at CHG and CHH sites, where "H" is A, C, or T (Guo et al. *Characterizing the strand-specific distribution of non-CpG methylation in human pluripotent cells*, Nucleic Acids Res (2014) 42 (5): 3009-3016).

*Updated June 2017*

### Menu

[Pipeline overview](https://www.encodeproject.org/wgbs/#overview)

- [Input files](https://www.encodeproject.org/wgbs/#inputs)
- [Output files](https://www.encodeproject.org/wgbs/#outputs)
- [References](https://www.encodeproject.org/wgbs/#references)

[Pipeline processing restrictions](https://www.encodeproject.org/wgbs/#restrictions)

[Data quality standards](https://www.encodeproject.org/wgbs/#standards)

### Pipeline Overview

The WGBS pipeline was developed as a part of the [ENCODE Uniform Processing Pipelines](https://www.encodeproject.org/pipelines/) series [<sup>1</sup>](https://www.encodeproject.org/wgbs/#references). The full WGBS pipeline code is available on [Github](https://github.com/ENCODE-DCC/dna-me-pipeline/tree/master/dnanexus) and can be run on [DNAnexus](https://platform.dnanexus.com/projects/BKpvFg00VBPV975PgJ6Q03v6/data/) (link requires account creation) at their current pricing.

#### Pipeline Schematic for paired-ended data

View the current instance for [paired-ended data](https://www.encodeproject.org/pipelines/ENCPL985BLO/)

#### Pipeline Schematic for single-ended data

View the current instance for [single-ended data](https://www.encodeproject.org/pipelines/ENCPL210QWH/)

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| [fastq](https://www.encodeproject.org/help/file-formats/#fastq) | **reads** | G-zipped DNA-sequencing reads | Reads must meet the criteria outlined under the [Uniform Processing Pipeline Restrictions](https://www.encodeproject.org/wgbs/#restrictions). |
| tar | **genome index** | A Bismark-transformed [<sup>2</sup>](https://www.encodeproject.org/wgbs/#references), Bowtie-indexed genome |  |

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
<td style="text-align: left;"><strong>alignments </strong></td>
<td>Produced by mapping reads to the genome</td>
<td>Alignment software is used to produce raw bam files</td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;"><strong>signal</strong></td>
<td>The raw signal file of all reads</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;">bedMethyl and bigBed</td>
<td style="text-align: left;"><strong>methylation state at CpG</strong></td>
<td>Percent methylation at CpG sites (see Description of bedMethyl file below this table).</td>
<td>CpG is a sequence in which a cytosine is followed by a guanine.</td>
</tr>
<tr>
<td style="text-align: left;">bedMethyl and bigBed</td>
<td style="text-align: left;"><strong>methylation state at CHG</strong></td>
<td>Percent methylation at CHG sites (see Description of bedMethyl file below this table).</td>
<td>CHG is a sequence in which a cytosine and a guanine are separated by an adenosine, a cytosine, or a thymine.</td>
</tr>
<tr>
<td style="text-align: left;">bedMethyl and bigBed</td>
<td style="text-align: left;"><strong>methylation state at CHH​</strong></td>
<td>Percent methylation at CHH sites (see Description of bedMethyl file below this table).</td>
<td>CHH is a sequence in which a cytosine is followed by two nucleotides that may be any of adenosine, cytosine, or thymine.</td>
</tr>
<tr>
<td colspan="4" style="text-align: left;"><a href="https://www.encodeproject.org/wgbs/#standards">Quality control metrics</a> are collected from the SamTools and Bismark software suites, and <strong>Pearson correlation</strong> is calculated from the two replicates' methylation states at CpG.</td>
</tr>
</tbody>
</table>

##### Description of bedMethyl file

The bedMethyl file is a bed9+2 file containing the number of reads and the percent methylation.

Each column represents the following:

1.  Reference chromosome or scaffold
2.  Start position in chromosome
3.  End position in chromosome
4.  Name of item
5.  Score from 0-1000. Capped number of reads
6.  Strandedness, plus (+), minus (-), or unknown (.)
7.  Start of where display should be thick (start codon)
8.  End of where display should be thick (stop codon)
9.  Color value (RGB)
10. Coverage, or number of reads
11. Percentage of reads that show methylation at this position in the genome

### References

#### Genomic References

View the [mapping assemblies](https://www.encodeproject.org/references/ENCSR425FOI/) (includes lambda genome for generation of comparative statistics)\
View the [genome annotation](https://www.encodeproject.org/references/ENCSR884DHJ/) used in this pipeline\
View the [Bismark/Bowtie](https://www.encodeproject.org/references/ENCSR497EUF/) indices and reference files used in this pipeline

#### Links and Publications

Find data generated by the WGBS [paired-ended pipeline](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.title=WGBS+paired-end+pipeline)\
Find data generated by the WGBS [single-ended pipeline](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.title=WGBS+single-end+pipeline)\
Explore WGBS-related publications on the portal [here](https://www.encodeproject.org/search/?searchTerm=WGBS&type=Publication)

1\. Tsuji, Junko, and Zhiping Weng. "[Evaluation of preprocessing, mapping and postprocessing algorithms for analyzing whole genome bisulfite sequencing data](https://bib.oxfordjournals.org/content/early/2015/11/30/bib.bbv103.short)." *Briefings in bioinformatics* 17.6 (2015): 938-952.

2\. Krueger, Felix, and Simon R. Andrews. "[Bismark: a flexible aligner and methylation caller for Bisulfite-Seq applications](http://www.ncbi.nlm.nih.gov/pubmed/21493656)." *Bioinformatics* 27.11 (2011): 1571-1572.

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

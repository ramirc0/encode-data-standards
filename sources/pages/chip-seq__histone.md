# Histone ChIP-seq Data Standards and Processing Pipeline

> Snapshot of <https://www.encodeproject.org/chip-seq/histone/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# Histone ChIP-seq Data Standards and Processing Pipeline

## Assay overview

ChIP-seq is a method used to analyze protein interactions with DNA. ChIP-seq combines chromatin immunoprecipitation with DNA sequencing to infer the possible binding sites of DNA-associated proteins. The ENCODE consortium has developed two analysis pipelines to study two different classes of protein-chromatin interactions. The histone ChIP-seq pipeline, described here, is suitable for proteins that associate with DNA over longer regions or domains. A typical target would be a histone protein or a specific post-translational histone modification.

The transcription factor ChIP-seq (TF ChIP-seq) pipeline is suitable for proteins that are expected to bind in a punctate manner, and is availabe [here](https://www.encodeproject.org/chip-seq/transcription_factor/). 

*Updated June 2017*

## Menu

[Pipeline overview](https://www.encodeproject.org/chip-seq/histone/#overview)

- [Mapping pipeline](https://www.encodeproject.org/chip-seq/histone/#mapping)
- [Histone Pipeline](https://www.encodeproject.org/chip-seq/histone/#histone)
- [Input files](https://www.encodeproject.org/chip-seq/histone/#inputs)
- [Output files for peak calling](https://www.encodeproject.org/chip-seq/histone/#outputs)
- [References](https://www.encodeproject.org/chip-seq/histone/#references)

[Pipeline processing restrictions](https://www.encodeproject.org/chip-seq/histone/#restrictions)

[Data quality standards](https://www.encodeproject.org/chip-seq/histone/#standards)

### Pipeline Overview

The ChIP-seq histone pipeline was developed as a part of the [ENCODE Uniform Processing Pipelines](https://www.encodeproject.org/pipelines/) series. The ENCODE consortium has developed two analysis pipelines to study the different classes of protein-chromatin interactions. Both ChIP-seq piplines share the same mapping steps, but differ in the methods for signal and peak calling and in the subsequent statistical treatment of replicates. The full ChIP-seq pipeline code is available on [Github](https://github.com/ENCODE-DCC/chip-seq-pipeline) and can be run on [DNAnexus](https://platform.dnanexus.com/projects/BKpvFg00VBPV975PgJ6Q03v6/data/) (link requires account creation) at their current pricing.

The histone analysis pipeline can resolve both punctate binding and longer chromatin domains that are bound by many instances of the target protein or target modification. The output of the histone ChIP-seq pipeline is suitable as input to chromatin segmentation models which seek to classify chromatin regions into functional categories.

#### Pipeline for Mapping of FASTQs

View the current [mapping pipeline instance](https://www.encodeproject.org/pipelines/ENCPL220NBH/).

[![](https://www.encodeproject.org/images/d364ed22-33e4-4ec0-b748-d7d3e9977e3e/@@download/attachment/ENCPL220NBH.png)](https://www.encodeproject.org/pipelines/ENCPL220NBH/)

#### Pipeline for Histone ChIP-seq peak calling

**Replicated experiments**

View the current [replicated histone pipeline instance](https://www.encodeproject.org/pipelines/ENCPL272XAE/). 

[![](https://www.encodeproject.org/images/6586d00e-43b0-43f4-a841-2e635c845606/@@download/attachment/ENCPL272XAE.png)](https://www.encodeproject.org/pipelines/ENCPL272XAE/)

**Unreplicated experiments**

View the current [unreplicated histone pipeline instance](https://www.encodeproject.org/pipelines/ENCPL841HGV/). 

[![](https://www.encodeproject.org/images/81a23034-9bac-4a5d-9622-5e114d48e95a/@@download/attachment/ENCPL841HGV_directDownload.png)](https://www.encodeproject.org/pipelines/ENCPL841HGV/)

#### Inputs:

**Inputs for mapping**

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| [fastq](https://www.encodeproject.org/help/file-formats/#fastq) | reads | G-zipped reads, paired-ended or single ended, stranded or unstranded. | Multiple fastqs from a single biological replicate or library are concatenated before mapping. Reads must meet the criteria outlined under the [Uniform Processing Pipeline Restrictions](https://www.encodeproject.org/chip-seq/histone/#restrictions). |
| fasta | genome indices | Indices are dependent on the assembly being used for mapping |  |

**Inputs for peak calling**

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| [bam](https://www.encodeproject.org/help/file-formats/#bam) | **alignments** (filtered) | Produced by mapping reads to the genome |  |
| [bam](https://www.encodeproject.org/help/file-formats/#bam) | **alignments** | Filtered bam file from the control experiment | See the  [Uniform Processing Pipeline Restrictions](https://www.encodeproject.org/chip-seq/histone/#restrictions) for more on controls.  |

#### Outputs:

**Histone pipeline (replicated)**

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
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;">fold change over control, signal p-value</td>
<td>Two versions of nucleotide resolution signal coverage tracks. </td>
<td>The signal is expressed in two ways: as fold-over control at each position, and as a p-value to reject the null hypothesis that the signal at that location is present in the control.</td>
</tr>
<tr>
<td style="text-align: left;"><strong><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</strong></td>
<td style="text-align: left;"><strong>peaks</strong></td>
<td><a href="https://www.encodeproject.org/data-standards/terms/#peaks">Relaxed peak</a> calls for each replicate individually and for both replicates' reads pooled together.</td>
<td>These peaks are thresholded to sample enough noise in the experiment for efficient statistical comparison of replicates in subsequent steps; as such, many false positives are expected to be present. They are <strong>not</strong> meant to be interpreted as definitive binding events, but are rather intended to be used as input for subsequent statistical comparison of replicates.</td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</td>
<td style="text-align: left;">replicated peaks</td>
<td>The set of peak calls from the pooled replicates.</td>
<td>These peaks are either observed in both replicates, or are observed in two <a href="https://www.encodeproject.org/data-standards/terms/#replication">pseudoreplicates</a>. Pseudoreplicates are peak sets called on half of the pooled reads, chosen at random without replacement.</td>
</tr>
<tr>
<td colspan="4" style="text-align: left;"><a href="https://www.encodeproject.org/chip-seq/histone/#standards">Quality control metrics</a> are collected to determine library complexity, read depth, FRiP score, and reproducibility.</td>
</tr>
</tbody>
</table>

**Histone pipeline (unreplicated)**

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
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;">fold change over control, signal p-value</td>
<td>Two versions of nucleotide resolution signal coverage tracks.</td>
<td>The signal is expressed in two ways: as fold-over control at each position, and as a p-value to reject the null hypothesis that the signal at that location is present in the control.</td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</td>
<td style="text-align: left;">peaks</td>
<td><a href="https://www.encodeproject.org/data-standards/terms/#peaks">Relaxed peak</a> calls from all reads in the single replicate.</td>
<td>These peaks are thresholded to sample enough noise in the experiment for efficient statistical comparison of pseudoreplicates in subsequent steps; as such, many false positives are expected to be present. They are <strong>not</strong> meant to be interpreted as definitive binding events, but are rather intended to be used as input for subsequent statistical comparison of replicates.</td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</td>
<td style="text-align: left;">pseudoreplicated peaks</td>
<td>The set of peak calls from two partitions, or "pseudoreplicates"</td>
<td>In the "partition concordance" step, a similar "naive overlap" strategy is used to identify stable peaks across <a href="https://www.encodeproject.org/data-standards/terms/#replication">pseudoreplicates</a> (instead of across true replicates). Stable peaks are peaks from the relaxed set that overlap at least 50% with peaks from both pseudoreplicates.</td>
</tr>
<tr>
<td colspan="4" style="text-align: left;"><a href="https://www.encodeproject.org/chip-seq/histone/#standards">Quality control metrics</a> are collected to determine library complexity, read depth, FRiP score, and reproducibility.</td>
</tr>
</tbody>
</table>

### References

#### Genomic References

View the [mapping assembly](https://www.encodeproject.org/references/ENCSR425FOI/) and [genome annotation](https://www.encodeproject.org/references/ENCSR884DHJ/) reference files used in this pipeline

#### Links and Publications

Find data generated by the [histone pipeline for replicated experiments](https://www.encodeproject.org/search/?type=experiment&files.analysis_step_version.analysis_step.pipelines.title=Histone%20ChIP-seq)\
Find data generated by the [histone pipeline for unreplicated experiments](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.title=Histone+ChIP-seq+%28unreplicated%29)\
Explore all [ChIP-seq related publications](https://www.encodeproject.org/search/?searchTerm=chip-seq&type=Publication) on the ENCODE portal

### Uniform Processing Pipeline Restrictions

**Current Restrictions**

- The read length should be a minimum of 50 base pairs, though longer read lengths are encouraged; the pipeline can process read lengths as low as 25 base pairs. Sequencing may be paired- or single-ended.
- The sequencing platform used should be indicated.
- Replicates should match in terms of read length and run type. 
- Pipeline files are mapped to either the [GRCh38 or mm10](https://www.encodeproject.org/references/ENCSR425FOI/) sequences.

### Current Standards

Experimental guidelines for ChIP-seq and epitope-tagged ChIP-seq experiments can be found [here](https://www.encodeproject.org/about/experiment-guidelines/). 

- Experiments should have two or more biological [replicates](https://www.encodeproject.org/data-standards/terms/#replication), isogenic or anisogenic. Assays performed using EN-TEx samples may be exempted due to limited availability of experimental material. 
- Antibodies must be characterized according to standards set by the ENCODE Consortium. Please see the linked documents for transcription factor standards [(May 2016)](https://www.encodeproject.org/documents/c7cb0632-7e5f-455e-9119-46a54f160711/), histone modification and chromatin-associated protein standards [(October 2016)](https://www.encodeproject.org/documents/4bb40778-387a-47c4-ab24-cebe64ead5ae/@@download/attachment/ENCODE_Approved_Oct_2016_Histone_and_Chromatin_associated_Proteins_Antibody_Characterization_Guidelines.pdf), and RNA binding protein standards [(November 2016)](https://www.encodeproject.org/documents/fb70e2e7-8a2d-425b-b2a0-9c39fa296816/@@download/attachment/ENCODE_Approved_Nov_2016_RBP_Antibody_Characterization_Guidelines.pdf).
- Each ChIP-seq experiment should have a corresponding input control experiment with matching run type, read length, and replicate structure. 
- Library complexity is measured using the [Non-Redundant Fraction (NRF) and PCR Bottlenecking Coefficients 1 and 2, or PBC1 and PBC2](https://www.encodeproject.org/data-standards/terms/#library). Preferred values are as follows: NRF\>0.9, PBC1\>0.9, and PBC2\>10.
- The experiment must pass routine metadata audits in order to be released.

#### Target-specific Standards

- For narrow-peak histone experiments, each replicate should have 20 million [usable fragments](https://www.encodeproject.org/data-standards/terms/#read-depth).
- For broad-peak histone experiments, each replicate should have 45 million usable fragments.
- H3K9me3 is an exception as it is enriched in repetitive regions of the genome. Compared to other broad marks, there are few H3K9me3 peaks in non-repetitive regions of the genome in tissues and primary cells. This results in many ChIP-seq reads that map to a non-unique position in the genome. Tissues and primary cells should have 45 million total mapped reads per replicate.

<table>
<thead>
<tr>
<th>Broad Marks</th>
<th>Narrow Marks</th>
<th>Exceptions</th>
</tr>
</thead>
<tbody>
<tr>
<td><ul>
<li>H3F3A</li>
<li>H3K27me3</li>
<li>H3K36me3</li>
<li>H3K4me1</li>
<li>H3K79me2</li>
<li>H3K79me3</li>
<li>H3K9me1</li>
<li>H3K9me2</li>
<li>H4K20me1</li>
</ul></td>
<td><ul>
<li>H2AFZ</li>
<li>H3ac</li>
<li>H3K27ac</li>
<li>H3K4me2</li>
<li>H3K4me3</li>
<li>H3K9ac</li>
</ul></td>
<td><ul>
<li>H3K9me3</li>
</ul></td>
</tr>
</tbody>
</table>

#### Previous Standards (ENCODE 2)

Data quality standards for ENCODE2 are outlined in [ChIP-seq guidelines and practices of the ENCODE and modENCODE consortia](https://www.encodeproject.org/publications/1f43e24e-7b18-4af6-8cfa-a5753500d8bc/).

- Experiments should have two or more biological [replicates](https://www.encodeproject.org/data-standards/terms/#replication), isogenic or anisogenic.
- Antibodies must be characterized according to [standards set by the consortium for ENCODE2 data](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf).
- Each ChIP-seq experiment should have a corresponding input or IgG control experiment with matching run type, read length, and replicate structure. 
- Library complexity is measured using the [Non-Redundant Fraction (NRF) and PCR Bottlenecking Coefficients 1 and 2, or PBC1 and PBC2](https://www.encodeproject.org/data-standards/terms/#library). Preferred values are as follows: NRF\>0.9, PBC1\>0.9, and PBC2\>10.
- The experiment should pass routine metadata audits in order to be released.

#### Target-specific Standards

- For narrow-peak histone experiments, each replicate should have 10 million [usable fragments](https://www.encodeproject.org/data-standards/terms/#read-depth).
- For broad-peak histone experiments, each replicate should have 20 million usable fragments.

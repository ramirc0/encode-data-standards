# Histone ChIP-seq Data Standards and Processing Pipeline (ENCODE 4)

> Snapshot of <https://www.encodeproject.org/chip-seq/histone-encode4/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# ENCODE4 Histone ChIP-seq Data Standards and Processing Pipeline

## Assay overview

ChIP-seq is a method used to analyze protein interactions with DNA. ChIP-seq combines chromatin immunoprecipitation with DNA sequencing to infer the possible binding sites of DNA-associated proteins. The ENCODE consortium has developed two analysis pipelines to study two different classes of protein-chromatin interactions. The histone ChIP-seq pipeline, described here, is suitable for proteins that associate with DNA over longer regions or domains. A typical target would be a histone protein or a specific post-translational histone modification.

The transcription factor ChIP-seq (TF ChIP-seq) pipeline is suitable for proteins that are expected to bind in a punctate manner, and is available [here](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/).

*Updated July 2020*

## Menu

[Pipeline overview](https://www.encodeproject.org/chip-seq/histone-encode4/#overview)

- [Histone Pipeline](https://www.encodeproject.org/chip-seq/histone-encode4/#histone)
- [Input files](https://www.encodeproject.org/chip-seq/histone-encode4/#inputs)
- [Output files](https://www.encodeproject.org/chip-seq/histone-encode4/#outputs)
- [References](https://www.encodeproject.org/chip-seq/histone-encode4/#references)

[Pipeline processing restrictions](https://www.encodeproject.org/chip-seq/histone-encode4/#restrictions)

[Data quality standards](https://www.encodeproject.org/chip-seq/histone-encode4/#standards)

### Pipeline Overview

The ChIP-seq histone pipeline was developed as a part of the [ENCODE Uniform Processing Pipelines](https://www.encodeproject.org/pipelines/) series. The ENCODE consortium has developed two analysis pipelines to study the different classes of protein-chromatin interactions. Both ChIP-seq pipelines share the same mapping steps, but differ in the methods for signal and peak calling and in the subsequent statistical treatment of replicates. The full ChIP-seq pipeline code is available on [Github](https://github.com/ENCODE-DCC/chip-seq-pipeline2).

The histone analysis pipeline can resolve both punctate binding and longer chromatin domains that are bound by many instances of the target protein or target modification. The output of the histone ChIP-seq pipeline is suitable as input to chromatin segmentation models which seek to classify chromatin regions into functional categories.

#### Replicated experiments

View the current [replicated histone pipeline instance](https://www.encodeproject.org/pipelines/ENCPL612HIG/).

[![](https://www.encodeproject.org/images/bd8dfa05-06da-40ae-b2ca-a4a2f6149518/@@download/attachment/Histone_replicated_E4_3.png)](https://www.encodeproject.org/pipelines/ENCPL612HIG/)

#### Uneplicated experiments

View the current [unreplicated histone pipeline instance](https://www.encodeproject.org/pipelines/ENCPL809GEM/).

[![](https://www.encodeproject.org/images/27c91d0b-3911-461c-85db-3d08283a12f0/@@download/attachment/Histone_unreplicated_E4_3.png)](https://www.encodeproject.org/pipelines/ENCPL809GEM/)

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| [fastq](https://www.encodeproject.org/help/file-formats/#fastq) | reads | G-zipped reads, paired-ended or single ended, stranded or unstranded. | Multiple fastqs from a single biological replicate or library are concatenated before mapping. Reads must meet the criteria outlined under the [Uniform Processing Pipeline Restrictions](https://www.encodeproject.org/chip-seq/histone-encode4/#restrictions). |
| fasta | genome indices | Indices are dependent on the assembly being used for mapping |  |

#### Outputs:

<table>
<tbody>
<tr>
<td style="text-align: left;"><strong>File format</strong></td>
<td style="text-align: left;"><strong>Information contained in file</strong></td>
<td><strong>File description</strong></td>
<td><strong>Notes</strong></td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;">fold change over control, signal p-value</td>
<td>Two versions of nucleotide resolution signal coverage tracks.</td>
<td>The signal is expressed in two ways: as fold-over control at each position, and as a p-value to reject the null hypothesis that the signal at that location is present in the control.</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><strong><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</strong></td>
<td style="text-align: left;"><strong>peaks</strong></td>
<td><a href="https://www.encodeproject.org/data-standards/terms/#peaks">Relaxed peak</a> calls for each replicate individually and for both replicates reads pooled together.</td>
<td>These peaks are thresholded to sample enough noise in the experiment for efficient statistical comparison of replicates in subsequent steps; as such, many false positives are expected to be present. They are <strong>not</strong> meant to be interpreted as definitive binding events, but are rather intended to be used as input for subsequent statistical comparison of replicates.</td>
<td></td>
</tr>
<tr>
<td colspan="5" style="text-align: left;"><strong>Replicated datasets only</strong></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</td>
<td style="text-align: left;">replicated peaks</td>
<td>The set of peak calls from the pooled replicates.</td>
<td>These peaks are either observed in both replicates, or are observed in two <a href="https://www.encodeproject.org/data-standards/terms/#replication">pseudoreplicates</a>. Pseudoreplicates are peak sets called on half of the pooled reads, chosen at random without replacement.</td>
<td></td>
</tr>
<tr>
<td colspan="5" style="text-align: left;"><strong>Unreplicated datasets only</strong></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</td>
<td style="text-align: left;">pseudoreplicated peaks</td>
<td>The set of peak calls from two partitions, or "pseudoreplicates"</td>
<td>In the "partition concordance" step, a similar "naive overlap" strategy is used to identify pseudoreplicated peaks across <a href="https://www.encodeproject.org/data-standards/terms/#replication">pseudoreplicates</a> (instead of across true replicates). Pseudo-replicated peaks are peaks from the relaxed set that overlap at least 50% with peaks from both pseudoreplicates.</td>
<td></td>
</tr>
<tr>
<td colspan="5" style="text-align: left;"><a href="https://www.encodeproject.org/chip-seq/histone-encode4/#standards">Quality control metrics</a> are collected to determine library complexity, read depth, FRiP score, and reproducibility.</td>
</tr>
</tbody>
</table>

### References

#### Genomic References

View the [human (GRCh38)](https://www.encodeproject.org/references/ENCSR174MOP/) and [mouse (mm10)](https://www.encodeproject.org/references/ENCSR928IAF/) reference files used in this pipeline

#### Links and Publications

Find data generated by the [histone pipeline for replicated experiments](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.accession=ENCPL612HIG&replication_type!=unreplicated)\
Find data generated by the [histone pipeline for unreplicated experiments](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.accession=ENCPL809GEM&replication_type=unreplicated)\
Explore all [ChIP-seq related publications](https://www.encodeproject.org/search/?searchTerm=chip-seq&type=Publication) on the ENCODE portal

### Uniform Processing Pipeline Guidelines

- The read length should be a minimum of 50 base pairs, though longer read lengths are encouraged; the pipeline can process read lengths as low as 25 base pairs. Sequencing may be paired- or single-ended.
- The sequencing platform used should be indicated. Different sequencing platforms might not be comparable. For example, replicates of HiSeq2000 vs. HiSeq4000 are different, and not comparable.
- Replicates should match in terms of read length and run type. 
- Pipeline files are mapped to either the [human (GRCh38)](https://www.encodeproject.org/references/ENCSR174MOP/) and [mouse (mm10)](https://www.encodeproject.org/references/ENCSR928IAF/) sequences.

### Current Standards (ENCODE4/ENCODE3)

Experimental guidelines for ChIP-seq and epitope-tagged ChIP-seq experiments can be found [here](https://www.encodeproject.org/about/experiment-guidelines/).

- Experiments should have two or more biological [replicates](https://www.encodeproject.org/data-standards/terms/#replication), isogenic or anisogenic. Assays performed using EN-TEx samples may be exempted due to limited availability of experimental material.
- Antibodies must be characterized according to standards set by the ENCODE Consortium. Please see the linked documents for histone modification and chromatin-associated protein standards [(October 2016)](https://www.encodeproject.org/documents/4bb40778-387a-47c4-ab24-cebe64ead5ae/@@download/attachment/ENCODE_Approved_Oct_2016_Histone_and_Chromatin_associated_Proteins_Antibody_Characterization_Guidelines.pdf).
- Each ChIP-seq experiment should have a corresponding input control experiment with matching run type, read length, and replicate structure.
- Library complexity is measured using the [Non-Redundant Fraction (NRF) and PCR Bottlenecking Coefficients 1 and 2, or PBC1 and PBC2](https://www.encodeproject.org/data-standards/terms/#library). Preferred values are as follows: NRF\>0.9, PBC1\>0.9, and PBC2\>10.
- The minimum ENCODE standard for each replicate in a ChIP-seq experiment targeting narrow marks and investigated as a transcription factor is 10 million usable fragments. The recommended value is \> 20 million, but \> 10 million is acceptable.
- The minimum ENCODE standard for each replicate in a ChIP-seq experiment targeting broad marks and investigated as a broad histone mark is 20 million usable fragments. The recommended value is \> 45 million, but \> 35 million is acceptable.
- Replicate concordance in ChIP-seq experiments is measured by calculating IDR values (Irreproducible Discovery Rate). ENCODE processed IDR thresholded peaks files should have both rescue ratio and self consistency ratio values \< 2 is recommended, but having only one of the ratio values \< 2 is acceptable.
- The experiment must pass routine metadata audits in order to be released. 

#### Target-specific Standards

- For narrow-peak histone experiments, each replicate should have 20 million [usable fragments](https://www.encodeproject.org/data-standards/terms/#read-depth).
- For broad-peak histone experiments, each replicate should have 45 million usable fragments.
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

Data quality standards for ENCODE2 are outlined in [ChIP-seq guidelines and practices of the ENCODE and modENCODE consortia](https://www.encodeproject.org/publications/1f43e24e-7b18-4af6-8cfa-a5753500d8bc/).

- Experiments should have two or more biological [replicates](https://www.encodeproject.org/data-standards/terms/#replication), isogenic or anisogenic.
- Antibodies must be characterized according to [standards set by the consortium for ENCODE2 data](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf).
- Each ChIP-seq experiment should have a corresponding input or IgG control experiment with matching run type, read length, and replicate structure.
- Library complexity is measured using the [Non-Redundant Fraction (NRF) and PCR Bottlenecking Coefficients 1 and 2, or PBC1 and PBC2](https://www.encodeproject.org/data-standards/terms/#library). Preferred values are as follows: NRF\>0.9, PBC1\>0.9, and PBC2\>10.
- The experiment should pass routine metadata audits in order to be released.

#### Target-specific Standards

- For narrow-peak histone experiments, each replicate should have 10 million [usable fragments](https://www.encodeproject.org/data-standards/terms/#read-depth).
- For broad-peak histone experiments, each replicate should have 20 million usable fragments.

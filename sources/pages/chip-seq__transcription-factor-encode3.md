# Transcription Factor ChIP-seq Data Standards and Processing Pipeline (ENCODE3)

> Snapshot of <https://www.encodeproject.org/chip-seq/transcription-factor-encode3/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# ENCODE3 Transcription Factor ChIP-seq Data Standards and Processing Pipeline

## Assay overview

ChIP-seq is a method used to analyze protein interactions with DNA. ChIP-seq combines chromatin immunoprecipitation with DNA sequencing to infer the possible binding sites of DNA-associated proteins. The ENCODE consortium has developed two analysis pipelines to study two different classes of protein-chromatin interactions. The transcription factor ChIP-seq (TF ChIP-seq) pipeline, described here, is suitable for proteins that are expected to bind in a punctate manner, such as to specific DNA sequences or specific chromatin configurations. In these assays, the IP target is typically a known or putative transcription factor or chromatin remodeler but can also be an RNA-binding protein or other DNA- or chromatin-specific factor. The pipeline for histone ChIP-seq is available [here](https://www.encodeproject.org/chip-seq/histone-encode4/), and is best for proteins that associate with DNA over longer regions or domains.

*Updated July 2020*

## Menu

[Pipeline overview](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#overview)

- [Mapping pipeline](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#mapping)
- [Transcription Factor Pipeline](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#tfbs)
- [Input files](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#inputs)
- [Output files for peak calling](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#outputs)
- [References](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#references)

[Pipeline processing restrictions](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#restrictions)

[Data quality standards](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#standards)

### Pipeline Overview

The ChIP-seq transcription factor pipeline was developed as a part of the [ENCODE Uniform Processing Pipelines](https://www.encodeproject.org/pipelines/) series. The ENCODE Consortium has developed two analysis pipelines to study the different classes of protein-chromatin interactions. Both ChIP-seq pipelines share the same mapping steps, but differ in the methods for signal and peak calling and in the subsequent statistical treatment of replicates. The full ChIP-seq pipeline code is available on [Github](https://github.com/ENCODE-DCC/chip-seq-pipeline2).

Transcription factor ChIP-seq (TF ChIP-seq) specifically looks at proteins which are thought to associate with specific DNA sequences to influence the rate of transcription.

#### Replicated experiments

View the ENCODE3 [replicated TF pipeline instance](https://www.encodeproject.org/pipelines/ENCPL138KID/).

#### Unreplicated experiments

View the ENCODE3 [unreplicated TF pipeline instance](https://www.encodeproject.org/pipelines/ENCPL493SGC/).

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| [fastq](https://www.encodeproject.org/help/file-formats/#fastq) | reads | G-zipped reads, paired-ended or single ended, stranded or unstranded | Multiple fastqs from a single biological replicate or library are concatenated before mapping. Reads must meet the criteria outlined under the [Uniform Processing Pipeline Restrictions](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#restrictions). |
| fasta | genome indices | Indices are dependent on the assembly being used for mapping |  |

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
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;">fold change over control, signal p-value</td>
<td>Two versions of nucleotide resolution signal coverage tracks. </td>
<td>The signal is expressed in two ways: as fold-over control at each position, and as a p-value to reject the null hypothesis that the signal at that location is present in the control.</td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</td>
<td style="text-align: left;">peaks</td>
<td><a href="https://www.encodeproject.org/data-standards/terms/#peaks">Relaxed peak</a> calls for each replicate individually and for both replicates reads pooled together.</td>
<td>These peaks are thresholded to sample enough noise in the experiment for efficient statistical comparison of replicates in subsequent steps; as such, many false positives are expected to be present. They are <strong>not</strong> meant to be interpreted as definitive binding events, but are rather intended to be used as input for subsequent statistical comparison of replicates.</td>
</tr>
<tr>
<td colspan="4" style="text-align: left;"><strong>Replicated datasets only</strong></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</td>
<td style="text-align: left;">conservative IDR peaks</td>
<td>Peaks derived from <a href="https://www.encodeproject.org/data-standards/terms/#concordance">IDR analysis</a> of biological replicates.</td>
<td rowspan="2"><a href="https://www.encodeproject.org/data-standards/terms/#concordance">IDR</a>, or Irreproducible Discovery Rate, measures the reproducibility of the assay in question. The optimal set of peaks is more sensitive, especially when one replicate has substantially lower data quality than the other.</td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</td>
<td style="text-align: left;">optimal IDR peaks</td>
<td>The largest set of peaks derived from <a href="https://www.encodeproject.org/data-standards/terms/#concordance">IDR analysis</a> of biological replicates and <a href="https://www.encodeproject.org/data-standards/terms/#replication">pseudoreplicates</a>.</td>
</tr>
<tr>
<td colspan="4" style="text-align: left;"><strong>Unreplicated datasets only</strong></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> (narrowPeak)</td>
<td style="text-align: left;"><strong>pseudoreplicated IDR thresholded peaks</strong></td>
<td>The set of peak calls from two partitions, or "pseudoreplicates"</td>
<td>In the "unreplicated IDR" step, an <a href="https://www.encodeproject.org/data-standards/terms/#concordance">IDR</a>-based strategy is used to identify stable peaks across <a href="https://www.encodeproject.org/data-standards/terms/#replication">pseudoreplicates</a> (instead of across true replicates). Peaks from the relaxed set (from all reads) as well as from pseudoreplicates are ranked, and those peaks that are well-supported in both pseudoreplicates (i.e. cross the same IDR threshold as for replicated experiments) are reported. There are no corresponding optimal and conservative peak sets in the unreplicated case because there are no true replicates.</td>
</tr>
<tr>
<td colspan="4" style="text-align: left;"><a href="https://www.encodeproject.org/chip-seq/transcription-factor-encode4/#standards">Quality control metrics</a> are collected to determine library complexity, read depth, FRiP score, and reproducibility.</td>
</tr>
</tbody>
</table>

### References

#### Genomic References

View the [human (GRCh38)](https://www.encodeproject.org/references/ENCSR174MOP/) and [mouse (mm10)](https://www.encodeproject.org/references/ENCSR928IAF/) reference files used in this pipeline

#### Links and Publications

Find data generated by the [transcription factor pipeline for replicated experiments](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.accession=ENCPL367MAS&replication_type!=unreplicated)\
Find data generated by the [transcription factor pipeline for unreplicated experiments](https://www.encodeproject.org/search/?type=Experiment&files.analysis_step_version.analysis_step.pipelines.accession=ENCPL481MLO&replication_type=unreplicated)\
Explore all [ChIP-seq related publications](https://www.encodeproject.org/search/?searchTerm=chip-seq&type=Publication) on the ENCODE portal

### Uniform Processing Pipeline Guidelines

- The read length should be a minimum of 50 base pairs, though longer read lengths are encouraged; the pipeline can process read lengths as low as 25 base pairs. Sequencing may be paired- or single-ended.

- The sequencing platform used should be indicated.Different sequencing platforms might not be comparable. For example, replicates of HiSeq2000 vs. HiSeq4000 are different, and not comparable.

- Replicates should match in terms of read length and run type.

- Pipeline files are mapped to either the [human (GRCh38)](https://www.encodeproject.org/references/ENCSR174MOP/) and [mouse (mm10)](https://www.encodeproject.org/references/ENCSR928IAF/) sequences.

### ENCODE3 Standards

\*Note: Current ENCODE4 standards are found [here](https://www.encodeproject.org/chip-seq/transcription-factor-encode4/).

Experimental guidelines for ENCODE3 ChIP-seq and epitope-tagged ChIP-seq experiments can be found [here](https://www.encodeproject.org/about/experiment-guidelines/).

- Experiments should have two or more biological [replicates](https://www.encodeproject.org/data-standards/terms/#replication), isogenic or anisogenic. Assays performed using EN-TEx samples may be exempted due to limited availability of experimental material.
- Antibodies must be characterized according to standards set by the ENCODE Consortium. Please see the linked documents for transcription factor standards [(May 2016)](https://www.encodeproject.org/documents/c7cb0632-7e5f-455e-9119-46a54f160711/) and Epitope-tagged Transcription Factor standards [(August 2019)](https://www.encodeproject.org/documents/04fe5259-b1a7-4649-9b59-0becba9ff659/@@download/attachment/20190213%20Epitope-tagged%20TF%20ChIP-seq-2.pdf).
- Each ChIP-seq experiment should have a corresponding input control experiment with matching run type, read length, and replicate structure.
- Library complexity is measured using the [Non-Redundant Fraction (NRF) and PCR Bottlenecking Coefficients 1 and 2, or PBC1 and PBC2](https://www.encodeproject.org/data-standards/terms/#library). Preferred values are as follows: NRF\>0.9, PBC1\>0.9, and PBC2\>10.
- The experiment must pass routine metadata audits in order to be released.

#### Target-specific Standards

- Each replicate should have 20 million usable fragments.
  - low read depth: 10 million to 20 million usable fragments
  - insufficient read depth: 5 million to 10 million usable fragments
  - extremely low read depth: \< 5 million usable fragments
- For transcription factor experiments, replicate concordance is measured by calculating [IDR values](https://www.encodeproject.org/data-standards/terms/#concordance) (Irreproducible Discovery Rate). The experiment passes if both rescue and self consistency ratios are less than 2.

#### Additional Metrics

- Additional metrics are calculated without defined thresholds, such as fraction of reads in peaks (FRiP), and are useful in comparing similar experiments. These metrics are described [here](https://www.encodeproject.org/data-standards/terms/#enrichment).

### ENCODE2 Standards (Previous Standards)

Data quality standards for ENCODE2 are outlined in [ChIP-seq guidelines and practices of the ENCODE and modENCODE consortia](https://www.encodeproject.org/publications/1f43e24e-7b18-4af6-8cfa-a5753500d8bc/).

- Experiments should have two or more biological [replicates](https://www.encodeproject.org/data-standards/terms/#replication), isogenic or anisogenic.
- Antibodies must be characterized according to [standards set by the consortium for ENCODE2 data](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf).
- Each ChIP-seq experiment should have a corresponding input or IgG control experiment with matching run type, read length, and replicate structure.
- Library complexity is measured using the [Non-Redundant Fraction (NRF) and PCR Bottlenecking Coefficients 1 and 2, or PBC1 and PBC2](https://www.encodeproject.org/data-standards/terms/#library). Preferred values are as follows: NRF\>0.9, PBC1\>0.9, and PBC2\>10.
- The experiment should pass routine metadata audits in order to be released.

#### Target-specific Standards

- Each replicate should have 10 million usable fragments.
- For transcription factor experiments, replicate concordance is measured by calculating [IDR values](https://www.encodeproject.org/data-standards/terms/#concordance) (Irreproducible Discovery Rate). The experiment passes if both rescue and self consistency ratios are less than 2.

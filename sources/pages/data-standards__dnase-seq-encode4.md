# DNase-seq Data Standards and Processing Pipeline

> Snapshot of <https://www.encodeproject.org/data-standards/dnase-seq-encode4/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# DNase-seq Data Standards and Processing Pipeline

## Assay overview

DNaseI-seq, or DNase-seq as it is referred to on the ENCODE portal, is a global and high-resolution method that uses the non-specific endonuclease DNaseI to map chromatin accessibility. These accessible regions, designated as DNaseI hypersensitive sites (DHSs), define the regulatory features, (eg. promoters, enhancers, insulators, locus control regions) of complex genomes. DNase-seq is an unbiased and robust method that is not predicated on an a priori understanding of regulatory patterns or chromatin features.

*Updated Dec 2020*

## Menu

[Pipeline overview](https://www.encodeproject.org/data-standards/dnase-seq-encode4/#overview)

- [Input files](https://www.encodeproject.org/data-standards/dnase-seq-encode4/#inputs)
- [Output files](https://www.encodeproject.org/data-standards/dnase-seq-encode4/#outputs)
- [References](https://www.encodeproject.org/data-standards/dnase-seq-encode4/#references)

[Data quality standards](https://www.encodeproject.org/data-standards/dnase-seq-encode4/#standards)

### Pipeline Overview

The ENCODE 4 DNase-seq pipeline was developed in collaboration with the Stamatoyannopoulos lab as a part of the [ENCODE Uniform Processing Pipelines](https://www.encodeproject.org/pipelines/) series. The pipeline for processing DNase I sequencing data takes in Illumina sequencing reads from DNase I experiments, assess the data, and returns genomic regions with statistically significant enrichments, or 'hotspots', of cleavage activity from the original DNase I experiment. The full DNase-seq pipeline code is available on [Github](https://github.com/ENCODE-DCC/dnase-seq-pipeline).

#### DNase-seq pipeline

View the current [pipeline instance](https://www.encodeproject.org/pipelines/ENCPL848KLD/).

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| [fastq](https://www.encodeproject.org/help/file-formats/#fastq) | reads | G-zipped reads, paired-ended or single-ended. | Multiple FASTQs from a single biological replicate or library are concatenated before mapping |
| fasta | genome indices, genome reference | Indices are dependent on the assembly being used for mapping |  |
| txt | chromosomes reference | List of expected chromosomes |  |
| bed, starch | hotspots reference | Reference files used for hotspots and peaks calling | Hotspots reference must be selected guided by the input FASTQ read length |
| txt | bias model | Reference file used for footprints modeling |  |

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
<td style="text-align: left;">unfiltered alignments</td>
<td>FASTQs are concatenated, trimmed for adapters and length, and aligned with BWA</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bam">bam</a></td>
<td style="text-align: left;">alignments</td>
<td>unfiltered alignments are filtered and deduplicated</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigwig">bigWig</a></td>
<td style="text-align: left;">read-depth normalized signal</td>
<td>Density starch from <a href="https://github.com/Altius/hotspot2">Hotspot2</a> is normalized and converted to a bigWig</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> narrowPeak</td>
<td style="text-align: left;">peaks</td>
<td>DNase I hypersensitivity sites identified using <a href="https://github.com/Altius/hotspot2">Hotspot2</a></td>
<td>Both 5% and 0.1% FDR peak calls are included in the outputs. FDR stands for False Discovery Rate.</td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> bed3+</td>
<td style="text-align: left;"><strong>FDR cut rate</strong></td>
<td>FDR estimate per site for being called hypersensitive to cleavage by DNase I</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;"><a href="https://www.encodeproject.org/help/file-formats/#bigbed">bed and bigBed</a> bed3+</td>
<td style="text-align: left;">footprints</td>
<td>A footprint model is fit and statistical deviations from expected cleavage rates within hotspot regions are called and thresholded</td>
<td><p>1% FDR footprints.</p>
<p>A detailed explanation of the footprint modeling is available in the <a href="https://footprint-tools.readthedocs.io/en/latest/">footprint-tools documentation</a>.</p></td>
</tr>
<tr>
<td style="text-align: left;">starch</td>
<td style="text-align: left;"><strong>peaks</strong></td>
<td>DNase I hypersensitivity sites identified using <a href="https://github.com/Altius/hotspot2">Hotspot2</a></td>
<td>0.1% FDR peaks</td>
</tr>
</tbody>
</table>

### References

#### Genomic References

View the [reference files](https://www.encodeproject.org/references/ENCSR497ZDW/) used in this pipeline

#### Links and Publications

Find data generated by the [ENCODE 4 DNase-seq pipeline](https://www.encodeproject.org/search/?type=Experiment&assay_term_name=DNase-seq&analysis_objects.pipeline_award_rfas=ENCODE4)

### Current Standards

Experimental guidelines for DNase experiments can be found [here](https://www.encodeproject.org/about/experiment-guidelines/).

- Experiments should have two or more biological [replicates](https://www.encodeproject.org/data-standards/terms/#replication), isogenic or anisogenic. Assays performed using EN-TEx samples or other rare types may be exempted due to limited availability of experimental material.
- A [SPOT (Signal Portion of Tags) score](https://www.encodeproject.org/data-standards/terms/#enrichment) of 0.4 or higher is considered a product of high quality data.
  - A SPOT score of 0.25 is considered minimally acceptable for rare and hard to find primary tissues.  In very rare cases of limited sample availability, lower scoring data may be used with appropriate caution. 
  - Any sample with a SPOT score \<0.3 should be targeted for replacement with a higher quality sample, whenever possible.
  - SPOT scores should be calculated on de-duplicated data or on data for which the duplicate rates are \<5%. 
- DNase-seq requires a minimum of 20 million [uniquely mapping reads](https://www.encodeproject.org/data-standards/terms/#read-depth) to generate a reliable SPOT score, and 100 million uniquely mapping reads to generate reliable DNase footprints.
  - For a standard conventional DNase-seq profile, 50 million uniquely mapping reads are recommended.
  - For deep, footprinting depth DNase-seq, a depth of 150-200 million uniquely mapping paired-end reads are recommended.
- Acceptable mappability rates and mitochondrial content are listed below:

<table>
<thead>
<tr>
<th>SPOT Score*</th>
<th>Mitochondrial Fraction</th>
<th>Mappability<br />
(without mitochondrial fraction)</th>
<th>Resulting Data Status</th>
</tr>
</thead>
<tbody>
<tr>
<td>≥ 0.4</td>
<td>&lt; 10%</td>
<td>&gt; 75%</td>
<td>Good</td>
</tr>
<tr>
<td>0.3 - 0.4</td>
<td>10 - 15%</td>
<td>65 - 75%</td>
<td>Acceptable</td>
</tr>
<tr>
<td>&lt; 0.25</td>
<td>&gt; 15%</td>
<td>&lt; 65%</td>
<td>Poor</td>
</tr>
<tr>
<td colspan="4">* SPOT scores of 0.25 - 0.3 are minimally acceptable in certain circumstances (see above explanation)</td>
</tr>
</tbody>
</table>

- Replicate concordance: the gene level quantification should have a [Pearson correlation](https://www.encodeproject.org/data-standards/terms/#concordance) of \>0.9 between isogenic replicates and \>0.85 between anisogenic replicates.
- The experiment must pass routine metadata audits in order to be released.

#### Uniform Processing Pipeline Restrictions

- The read length should be a minimum of 36 base pairs.
- Read trimming of adapter sequences is recommended.
  - Failure to trim sequences of fragments sized shorter than the sequencing cycle number can lead to filtering small fragment signal and create bias in the resulting alignments.
  - There is no post-trimming read length minimum, but effective fragment mapping drops significantly at kmer-lengths of less than 22 base pairs.
- Adapter sequences used in library creation should be documented and available to the pipeline.
- Barcodes/UMI coding should be indicated in the metadata and available for accurate application of duplication filtering methods by the pipeline.
- Sequencing may be paired- or single-end, as long as sequencing type is specified and read pairs are indicated. Paired-end sequencing is preferred. 
- The sequencing platform used must be indicated. 
- Alignment files are mapped to either the [GRCh38 or mm10](https://www.encodeproject.org/references/ENCSR425FOI/) sequences.

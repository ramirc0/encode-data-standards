# HiC Data Standards and Processing Pipeline

> Snapshot of <https://www.encodeproject.org/hic/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# HiC Data Standards and Processing Pipeline

### Assay Overview

Hi-C is an assay that uses DNA-DNA proximity ligation to identify long range chromatin contacts in an unbiased, genome-wide fashion. This gives insight about the 3D architecture of the genome inside the nucleus. In a typical Hi-C assay, cells are fixed, causing loci in close spatial proximity to be cross-linked with one another. Next, the DNA is fragmented, and sequences that are nearby in 3D are ligated to one another. The resulting chimeric sequences capture information about the DNA sequences that were co-localized in the original sample. The sequence of the ligation junction can be used to determine the adjacent positions with single base-pair resolution. Hi-C libraries are characterized by means of DNA sequencing, generating a library of chimeric sequences that were in close proximity within the nucleus. This catalog of chimeric sequences can be used to construct a contact matrix showing the frequency with which pairs of loci are in contact. 

Analysis of Hi-C data reveals many features of genomic organization, including compartments (Lieberman-Aiden E. et al. Comprehensive mapping of long-range interactions reveals folding principles of the human genome. Science. 2009 Oct 9;326(5950):289-93.), subcompartments, contact domains, and point-to-point chromatin loops (Rao, Huntley et al. A 3D Map of the Human Genome at Kilobase Resolution Reveals Principles of Chromatin Looping. Cell. 2014 Dec 18; 159(7):p1665-1680.), as well as stripes in which a single locus tends to form contact with a genomic interval (Vian L, et al. Casellas R. The Energetics and Physiological Impact of Cohesin Extrusion. Cell. 2018 May 17;173(5):1165-1178.e20.).

Hi-C data can also be used for genotyping, both to call variants (including local variants, such as SNPs, as well as large scale structural variants), and to assign them to chromosome-length haploblocks (Dudchenko O, 3D genomics across the tree of life reveals condensin II as a determinant of architecture type. Science. 2021 May 28;372(6545):984-989.).

*Updated  September 2022*

### Menu

[Pipeline overview](https://www.encodeproject.org/hic/#overview)

- [Input files](#inputs)
- [Output files](#outputs)

[Data quality standards](https://www.encodeproject.org/hic/#standards)

### Pipeline Overview

The Hi-C pipeline was developed by Aiden lab. The full Hi-C pipeline code is available on [Github](https://github.com/theaidenlab/juicer).

![](https://www.encodeproject.org/images/c47a66b2-fb00-4dc9-a400-9acf0197229f/@@download/attachment/hic_pipeline_final.png)

#### Inputs:

| **File format** | **Information contained in file** | **File description** | **Notes** |
|:---|:---|----|----|
| .fastq | **reads** | G-zipped reads, paired-ended or single ended, stranded or unstranded. | Multiple fastqs from a single biological replicate or library are concatenated before mapping. Reads must meet the criteria outlined under the [Uniform Processing Pipeline Restrictions](https://www.encodeproject.org/chip-seq/histone/#restrictions).  |
| .tsv | **chromosome sizes** | Reference file (GRCh38, mm19 available) used in the ENCODE Processing Pipeline |  |
| .txt | **restriction enzyme map** | Map of restriction enzyme sites across the genome  (GRCh38, mm19 available)  | Applicable only for experiments using restriction enzymes.  |

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
<td style="text-align: left;">.bam</td>
<td style="text-align: left;"><strong>alignments</strong></td>
<td>Filtered and de-duplicated bam file produced by mapping reads to the genome</td>
<td>Reads aligned to GRCh38 (for experiments in human) or mm10 (for experiments in mouse)</td>
</tr>
<tr>
<td style="text-align: left;">.bedpe</td>
<td style="text-align: left;"><strong>contact domains</strong></td>
<td>Chromatin intervals that exhibit enhanced contact frequency within themselves</td>
<td>May include multiple files with this output depending on if the file was derived_from mapq1 or mapq30. The preferred files to use for analysis are those with mapq30 annotations. They are marked with preferred_default=true property. </td>
</tr>
<tr>
<td style="text-align: left;">.bigWig</td>
<td style="text-align: left;"><strong>genome compartments</strong></td>
<td>A-B compartments, which result from the spatial segregation of open and closed chromatin to form two genome-wide compartments. Positive values correspond to the A compartment.</td>
<td>May include multiple files with this output_type that differs in bin size (i.e. 5kb, 10 kb). The preferred files to use for analysis are those with mapq30 annotations. They are marked with preferred_default=true property. </td>
</tr>
<tr>
<td style="text-align: left;">.hic</td>
<td style="text-align: left;"><strong>mapping quality thresholded contact matrix</strong></td>
<td>A contact matrix after filtering out all alignments with mapQ &lt;30</td>
<td>The preferred files to use for analysis are those with mapq30 annotations. They are marked with preferred_default=true property. </td>
</tr>
<tr>
<td style="text-align: left;">.hic</td>
<td style="text-align: left;"><strong>contact matrix</strong></td>
<td><p>By partitioning the linear genome into “loci” of fixed size (e.g., bins of 1 Mb or 1 kb), the Hi-C map can be represented as a “contact matrix” M, where the entry Mi,j is the number of contacts observed between locus Li and locus Lj. </p>
<p>This file contains contact matrices at resolutions as fine as 10bp.</p></td>
<td>To account for nonuniformities in coverage due to the number of restriction sites at a locus or the accessibility of those sites to cutting, we use a matrix-balancing algorithm to generate a normalization for each chromosome and resolution; these are also included in the file.</td>
</tr>
<tr>
<td style="text-align: left;">.pairs</td>
<td style="text-align: left;"><strong>pairs</strong></td>
<td>This file contains a list of all Hi-C contacts: reads (or read pairs) reflecting at least two ligated sequences that align uniquely to the genome. Duplicates are removed.</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;">.bigWig</td>
<td style="text-align: left;"><strong>nuclease cleavage frequency</strong></td>
<td>Frequency of nuclease cutting observed for each genomic position. Correlates with chromatin accessibility in high-quality samples.</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;">.bed</td>
<td style="text-align: left;"><strong>genome subcompartments</strong></td>
<td>Patterns of long-range contacts</td>
<td></td>
</tr>
<tr>
<td style="text-align: left;">.bedpe</td>
<td style="text-align: left;"><strong>loops</strong></td>
<td>Pairs of loci that show significantly closer proximity with one another than with the loci lying between them</td>
<td>May include multiple files with this output depending on if the file was derived_from mapq1 or mapq30.The preferred files to use for analysis are those with mapq30 annotations. They are marked with preferred_default=true property. </td>
</tr>
</tbody>
</table>

####  

### Current Standards

The experiment must pass routine metadata audits in order to be released. The chromatin interaction (.hic) is checked for the following quality metrics: 

Intact Hi-C Experiments

- minimum of 2 billion total reads
- minimum of 50% unique reads in Hi-C contacts and ideally have a percentage over 60%. A low percentage of unique reads in Hi-C contacts indicates a failure in the restriction, fill-in, or ligation steps of the protocol
- minimum of 15% of unique reads in long range contacts

In situ Hi-C Experiments

- a maximum of 40% of unique total duplicates. A high percentage of unique total duplicates indicates low molecular complexity
- require a minimum 20% of unique reads in Hi-C contacts, and ideally have a percentage over 50%. A low percentage of unique reads in Hi-C contacts indicates a failure in the restriction, fill-in, or ligation steps of the protocol
- a minimum 15% of reads with ligation motif present. A low percentage of reads with ligation motif present indicates a failure in ligation
- a minimum 20% of unique reads in long range contacts, and ideally have a percentage over 35%
- Experimental guidelines for in situ HiC experiments can be found [here](https://www.encodeproject.org/about/experiment-guidelines/)
- Computational guidelines for in situ HiC experiments can be found [here](https://www.encodeproject.org/documents/75926e4b-77aa-4959-8ca7-87efcba39d79/)

 Genophasing

- A quality metric text file that reports a percent of heterozygous SNPs phased into the largest phased block, per chromosome, can be found in the Documentation section of Genophasing Annotation landing page. Annotations that contain \>90% phased SNPs in the largest phased block for most chromosomes are considered good. Annotations with most (\>50%) of phased SNPs in the largest phased block for most chromosomes are considered acceptable.

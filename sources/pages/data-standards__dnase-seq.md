# DNase-seq Data Standards

> Snapshot of <https://www.encodeproject.org/data-standards/dnase-seq/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# DNase-seq Data Standards

### ENCODE 3 Standards

Experimental guidelines for DNase experiments can be found [here](https://www.encodeproject.org/about/experiment-guidelines/).

- Experiments should have two or more biological [replicates](https://www.encodeproject.org/data-standards/terms/#replication),isogenic or anisogenic. Assays performed using EN-TEx samples or other rare types may be exempted due to limited availability of experimental material.
- A [SPOT (Signal Portion of Tags) score](https://www.encodeproject.org/data-standards/terms/#enrichment) of 0.4 or higher is considered a product of high quality data.
  - A SPOT score of 0.25 is considered minimally acceptable for rare and hard to find primary tissues.  In very rare cases of limited sample availability, lower scoring data may be used with appropriate caution. 
  - Any sample with a SPOT score \<0.3 should be targeted for replacement with a higher quality sample, whenever possible.
  - SPOT scores should be calculated on de-duplicated data or on data for which the duplicate rates are \<5%. 
- DNase-seq requires a minimum of 20 million [uniquely mapping reads](https://www.encodeproject.org/data-standards/terms/#read-depth)to generate a reliable SPOT score, and 100 million uniquely mapping reads to generate reliable DNase footprints.
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

#### TALEN-modified experiments

- TALEN experiments should provide both homozygous and heterozygous deletion replicates.

#### Uniform Processing Pipeline Restrictions

- The read length should be a minimum of 36 base pairs.
- Read trimming of adapter sequences is recommended.
  - Failure to trim sequences of fragments sized shorter than the sequencing cycle number can lead to filtering small fragment signal and create bias in the resulting alignments.
  - There is no post-trimming read length minimum, but effective fragment mapping drops significantly at kmer-lengths of less than 22 base pairs.
- Adapter sequences used in library creation should be documented and available to the pipeline.
- Barcodes/UMI coding should be indicated in the metadata and available for accurate application of duplication filtering methods by the pipeline.
- Sequencing may be paired- or single-end, as long as sequencing type is specified and read pairs are indicated. Paired-end sequencing is preferred. 
- The sequencing platform used must be indicated. 
- Alignment files are mapped to either the [GRCh38 or mm10](https://www.encodeproject.org/references/ENCSR425FOI/) sequences.

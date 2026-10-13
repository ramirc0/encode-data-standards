# Terms and Definitions

> Snapshot of <https://www.encodeproject.org/data-standards/terms/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# Terms and Definitions

### Read depth

**Usable fragment** – A fragment is defined as the sequencing output corresponding to one location in the genome. If single-ended sequencing is performed, one read is considered a fragment. If paired-ended sequencing is performed, one pair of reads is considered a fragment. Fragments are considered usable if they pass the various filters in the [ChIP-seq uniform processing pipelines](https://www.encodeproject.org/chip-seq/). **Used to evaluate ChIP-seq data.**

**Unique fragment** – A fragment is defined as the sequencing output corresponding to one location in the genome. If single-ended sequencing is performed, one read is considered a fragment. If paired-end sequencing is performed one pair of reads is considered a fragment. Fragments are considered unique if they uniquely map to the genome and pass various filters in the eCLIP processing pipeline. **Used to evaluate eCLIP data.**

**Usable reads** – A fragment is considered “usable” if it uniquely maps to the genome and remains after removing PCR duplicates (defined as two fragments that map to the same genomic position and have the same unique molecular identifier). **Used to evaluate eCLIP data. **

**Uniquely mapped reads** – For mapping purposes a read is either one single-ended read or a paired-end set of two reads which will be counted as one mapping. Uniquely mapped reads map to exactly one location within the reference genome. **Used to evaluate RNA-seq and RAMPAGE data. **

**Unique usable paired-end tags (PETs)** – PETs are the nucleotide sequences at each end of a DNA fragment. Statistically, they are expected to exist together only once per genome. Usable PETs, where a PET is a single paired-end read, map uniquely to the same chromosome and within a certain distance of each other (standards are currently being determined). **Used to evaluate ChIA-PET.**

**Aligned reads** – The number of uniquely mapped reads + the number of multi-mappers that map to less than 20 locations. 

**Coverage** – 1X coverage = read length \* number of uniquely mapped reads / 3e+09. A minimum coverage of 30X requires the average read depth across the genome to be 30 reads per base. **Used to evaluate WGBS.**

### Peaks

**Relaxed peaks** – A set of peaks called with a very low significance threshold. By design, this represents not only signal, but a generous sampling of noise for subsequent replicate concordance steps to work on. The peak set contains many false positives - maybe even *mostly* false positives - and so is not designed for human consumption. It is, rather, an appropriate input for computational methods such as IDR that need both signal and a sampling of the noise. **Used in ChIP-seq.**

### Enrichment

**Signal Portion of Tags (SPOT)** – A measure of enrichment, analogous to the commonly used fraction of reads in peaks metric. SPOT calculates the fraction of reads that fall in tag-enriched regions identified using the Hotspot program, ([Hotspot](https://www.encodeproject.org/software/hotspot/) and [SPOT](https://www.encodeproject.org/software/spot/) are described on the [ENCODE Software Tools](https://www.encodeproject.org/software) pages) from a sample of 5 million reads; only read 1 is used if the data are paired-ended. Note that because methods of measuring enrichment based on determining the fraction of reads that fall in peaks are sensitive to the determination of enriched regions, comparison is possible only when using the identical peak caller and parameters. Larger SPOT values indicate higher signal to noise; 1.0 is the maximum possible value (all reads are signal) and 0 is the minimum possible value (all reads are noise). For FAIRE, more than 10 million reads are typically required to reliably detect peaks. **Used to evaluate DNase-seq.**

**Transcription Start Site (TSS) Enrichment Score **- The TSS enrichment calculation is a signal to noise calculation. The reads around a reference set of TSSs are collected to form an aggregate distribution of reads centered on the TSSs and extending to 2000 bp in either direction (for a total of 4000bp). This distribution is then normalized by taking the average read depth in the 100 bps at each of the end flanks of the distribution (for a total of 200bp of averaged data) and calculating a fold change at each position over that average read depth. This means that the flanks should start at 1, and if there is high read signal at transcription start sites (highly open regions of the genome) there should be an increase in signal up to a peak in the middle. We take the signal value at the center of the distribution after this normalization as our TSS enrichment metric. **Used to evaluate ATAC-seq. **

**Fraction of reads in peaks (FRiP)** – Fraction of all mapped reads that fall into the called peak regions, i.e. usable reads in significantly enriched peaks divided by all usable reads. In general, FRiP scores correlate positively with the number of regions. (Landt et al, Genome Research Sept. 2012, 22(9): 1813–1831)

**Saturated peak detection** – Peak detection is considered saturated if upon downsampling 50% of the usable reads in an eCLIP dataset and recalling peaks, 80% of the original significant peaks are overlapped by lenient peaks called in the downsampled dataset. **Used to evaluate eCLIP.**

- **Significant peaks**: peaks with a log2 (fold enrichment above background) ≥ 3 and a –log10 (p-value) ≥ 3.
- **Lenient peaks**: peaks with a log2 ≥ 1 and a –log10 ≥ 2.

**Read clusters** – Regions identified by CLIPper to have higher read density than transcript-based background. **Used to evaluate eCLIP.**

**R value of a *k*mer** – The R value of a *k*mer (k= 4, 5, 6, or 7) is defined as the frequency of that *k*mer in the RBP pulldown reads (of the most enriched protein concentration, unless otherwise noted) divided by the corresponding frequency in the input library reads. **Used to evaluate RNA Bind-N-Seq.**

### Replication

Ideally, a high throughput sequencing assay would be performed on two separate biological samples (i.e. two growths of an immortalized cell line) with two separate library preparations. Each of these assays would be a “replicate”. Ideally, each replicate would only require one sequencing run to obtain the required read depth for the assay. In reality, experiments may be replicated in many ways:

**Biological replication** – Replication on two distinct biosamples on which the same experimental protocol was performed. For example, on different growths, two different knockdowns, etc.

**Isogenic replication** – Biological replication. Two replicates from biosamples derived from the same human donor or model organism strain. These biosamples have been treated separately (i.e. two growths, two separate knockdowns, or two different excisions).

**Anisogenic replication** – Biological replication. Two replicates from similar tissue biosamples derived from different human donors or model organism strains. 

**Technical replication** – Two replicates from the same biosample, treated identically for each replicate (e.g. same growth, same knockdown).

**Sequencing replication** – A library can be run through a sequencer multiple times. Each one of these runs could be considered a sequencing replicate of the experiment, especially if the sequencing run is treated differently, e.g. paired- versus single-ended.

**Pseudoreplicate** – A subsample of reads, chosen without replacement, from a single replicate used as a substitute for replication in the absence of true biological replicates.

### Replicate Concordance

**[Irreproducible Discovery Rate (IDR)](https://sites.google.com/site/anshulkundaje/projects/idr)** – Evaluates reproducibility of high-throughput experiments by measuring consistency between two biological replicates within an experiment. **Used to evaluate ChIP-seq and ATAC-seq.**

- A statistical procedure that operates on the replicated peak set and compares consistency of ranks of these peaks in individual replicate/[pseudoreplicate](https://www.encodeproject.org/data-standards/terms/#replication) peak sets. Peaks with high rank consistency are retained. IDR can operate on peaks across a pair of true replicates resulting in a “conservative” output peak set, or across a pair of pseudoreplicates resulting in an “optimal“ output peak set. Peaks in the conservative peak set can be interpreted as high confidence peaks, representing reproducible events across true biological replicates and accounting for true biological and technical noise. Peaks in the optimal set can be interpreted as high-confidence peaks, representing reproducible events and accounting for read sampling noise. The optimal set is more sensitive, especially when one of the replicates has lower data quality than the other.
- The self-consistency ratio measures consistency within a single dataset
- The rescue ratio measures consistency between datasets when the replicates within a single experiment are not comparable.

| Self-consistency Ratio | Rescue Ratio   | Resulting Data Status | Flag colors |
|------------------------|----------------|-----------------------|-------------|
| Less than 2            | Less than 2    | Ideal                 | None        |
| Less than 2            | Greater than 2 | Acceptable            | Yellow      |
| Greater than 2         | Less than 2    | Acceptable            | Yellow      |
| Greater than 2         | Greater than 2 | Concerning            | Orange      |

[**Distance between replicates**](https://www.encodeproject.org/data-standards/mad-qc/) – This metric is equivalent to the standard deviation of the log-ratios between replicates. Specifically, for two replicates x_1, ... x_N and y_1, .. y_n, we define the distance as average of { log ( y_i) - log(x_i) } ^2. However, to down-weight the influence of outliers and transcripts with very low expression we implement a robust version: 1.4826 \* median \[ \| log (y_i/ x_i) \| \] for genes that have x_i, y_i \> preset cut-off that is set to 1 FPKM. Note that the constant 1.4826 is used to make the resulting metric comparable in scale to the non-robust version. **Used to evaluate RNA-seq.**

<table>
<thead>
<tr>
<th>Biosample Type</th>
<th>Mean</th>
<th>75th Percentile</th>
<th>99th Percentile</th>
<th># Datasets</th>
</tr>
</thead>
<tbody>
<tr>
<td>Immortalized cell line</td>
<td>0.466</td>
<td>0.513</td>
<td>1.895</td>
<td>46</td>
</tr>
<tr>
<td>Tissue</td>
<td>0.729</td>
<td>0.934</td>
<td>1.662</td>
<td>24</td>
</tr>
<tr>
<td>Primary cell</td>
<td>0.66</td>
<td>0.83</td>
<td>1.451</td>
<td>80</td>
</tr>
<tr>
<td>Stem cell*</td>
<td>0.433</td>
<td>-</td>
<td>-</td>
<td>1</td>
</tr>
<tr>
<td>Induced pluripotent stem cell*</td>
<td>1.04</td>
<td>-</td>
<td>-</td>
<td>2</td>
</tr>
<tr>
<td>In vitro differentiated cells</td>
<td>0.5599</td>
<td>0.572</td>
<td>1.325</td>
<td>10</td>
</tr>
<tr>
<td colspan="5">*Not enough data available to calculate meaningful values. New values will be calculated if and when additional data becomes available.</td>
</tr>
</tbody>
</table>

**Pearson Correlation** – The cosine of the angle between the regression lines of the two datasets being compared. If the correlation is highly positive, the angle approaches 0 degrees. If it is highly negative, the angle approaches 180 degrees. If there is no correlation, the angle is 90 degrees. The Pearson correlation value must therefore fall between -1 and 1. In the case of WGBS experiments, the pipeline compares two bedMethyl files. **Used to evaluate WGBS.**

**Spearman Correlation** – Pieces of data are ranked, then Pearson Correlation is calculated from the rank values. **Used to evaluate RNA-seq.**

**Raw overlap** – Measures the average of the percentage of interactions seen in common between all pairs of replicates. **Used to evaluate ChIA-PET.**

**Correlation of interaction frequency** – The Spearman rank correlation of the number of paired-end tags underlying all interactions across the genome between all pairs of replicates. **Used to evaluate ChIA-PET.**

### Library Complexity

**ChIP-seq Standards:**

| PBC1 | PBC2 | Bottlenecking level | NRF | Complexity | Flag colors |
|----|----|----|----|----|----|
| \< 0.5 | \< 1 | Severe | \< 0.5 | Concerning | Orange |
| 0.5 ≤ PBC1 \< 0.8 | 1 ≤ PBC2 \< 3 | Moderate | 0.5 ≤ NRF \< 0.8 | Acceptable | Yellow |
| 0.8 ≤ PBC1 \< 0.9 | 3 ≤ PBC2 \< 10 | Mild | 0.8 ≤ NRF \< 0.9 | Compliant | None |
| ≥ 0.9 | ≥ 10 | None | \> 0.9 | Ideal | None |

**ATAC-Seq Standards:**

| PBC1 | PBC2 | Bottlenecking level | NRF | Complexity | Flag colors |
|----|----|----|----|----|----|
| \< 0.7 | \< 1 | Severe | \< 0.7 | Concerning | Orange |
| 0.7 ≤ PBC1 ≤ 0.9 | 1 ≤ PBC2 ≤ 3 | Moderate | 0.7 ≤ NRF ≤ 0.9 | Acceptable | Yellow |
| \> 0.9 | \> 3 | None | \> 0.9 | Ideal | None |

**PCR Bottlenecking Coefficient 1 (PBC1)**

- PBC1=M<sub>1</sub>/M<sub>DISTINCT</sub> where
  - M<sub>1</sub>: number of genomic locations where exactly one read maps uniquely
  - M<sub>DISTINCT</sub>: number of distinct genomic locations to which some read maps uniquely

**PCR Bottlenecking Coefficient 2 (PBC2)**

- PBC2=M<sub>1</sub>/M<sub>2</sub> where
  - M<sub>1</sub>: number of genomic locations where only one read maps uniquely
  - M<sub>2</sub>: number of genomic locations where two reads map uniquely

**Non-Redundant Fraction (NRF)** – Number of distinct uniquely mapping reads (i.e. after removing duplicates) / Total number of reads.

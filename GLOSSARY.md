# Glossary

Terms and tier tables that recur across assays. Leaves link here instead of repeating them. Definitions follow the ENCODE [Terms and Definitions](https://www.encodeproject.org/data-standards/terms/) page ([snapshot](sources/pages/data-standards__terms.md)) unless a row names another source.

[Back to the root](README.md)

## Replication

### Biological replicate

Two distinct biosamples processed with the same protocol, such as two growths or two separate knockdowns.

### Isogenic replicate

A biological replicate from the same human donor or model organism strain, treated separately (two growths, two knockdowns, two excisions).

### Anisogenic replicate

A biological replicate from similar tissue biosamples of different human donors or model organism strains.

### Technical replicate

Two replicates from the same biosample, treated identically (same growth, same knockdown).

### Sequencing replicate

One library run through the sequencer more than once, for example once single-ended and once paired-ended.

### Pseudoreplicate

A subsample of reads drawn without replacement from one replicate. It stands in for a true replicate when none exists. ChIP-seq and ATAC-seq pages describe pseudoreplicates as peak sets called on half of the pooled reads, chosen at random without replacement.

### EN-TEx exemption

Most standards pages let assays on EN-TEx samples skip the two-replicate rule "due to limited availability of experimental material". The [audits page](sources/pages/data-standards__audits.md) words the same rule for GTEx: "Experiments using samples from the GTEx consortium do not require more than one replicate because of the limited availability of tissues." ATAC-seq still requires two technical replicates for EN-TEx.

## Read-depth units

Each assay counts depth in its own unit. Compare thresholds only within the same unit. The last column gives the assays the terms page names for each unit.

| Unit | Definition | Terms page assigns it to |
|---|---|---|
| Fragment | One location in the genome. One read for single-end data, one read pair for paired-end data. | ChIP-seq, eCLIP |
| Usable fragment | A fragment that passes the filters of the ChIP-seq uniform pipelines. | ChIP-seq |
| Unique fragment | A fragment that maps uniquely and passes the eCLIP pipeline filters. | eCLIP |
| Usable read | Maps uniquely and remains after removing PCR duplicates (same position and same UMI). | eCLIP |
| Uniquely mapped read | One single-end read, or one read pair counted as one mapping, that maps to exactly one location. | RNA-seq, RAMPAGE |
| Aligned read | Uniquely mapped reads plus multi-mappers that map to fewer than 20 locations. | Not stated |
| Unique usable PET | A paired-end tag that maps uniquely to one chromosome within a set distance of its mate. The distance standard is "currently being determined". | ChIA-PET |
| Coverage | 1X = read length × uniquely mapped reads / 3e+09. 30X means 30 reads per base on average. | WGBS |
| FLNC read | Full-length nonchimeric read ([long-read RNA-seq page](sources/pages/rna-seq__long-read-rna-seq.md)). | Not on the terms page |

The standards pages do not always use the unit the terms page assigns. The bulk RNA-seq, small RNA-seq, RAMPAGE and ENCODE3 microRNA-seq pages set depth in aligned reads. ATAC-seq counts non-duplicate, non-mitochondrial aligned reads. DNase-seq counts uniquely mapping reads.

## Library complexity

The "Flag color" columns below match portal audit levels: yellow is WARNING, orange is NOT_COMPLIANT and red is ERROR ([audit levels](audits/README.md#levels)).

### NRF

Non-Redundant Fraction. Distinct uniquely mapping reads (after removing duplicates) divided by total reads.

### PBC1

PCR Bottlenecking Coefficient 1 = M1 / M_DISTINCT. M1 is the number of genomic locations where exactly one read maps uniquely. M_DISTINCT is the number of distinct genomic locations to which some read maps uniquely.

### PBC2

PCR Bottlenecking Coefficient 2 = M1 / M2. M2 is the number of genomic locations where exactly two reads map uniquely.

### ChIP-seq complexity tiers

| PBC1 | PBC2 | Bottlenecking | NRF | Complexity | Flag color |
|---|---|---|---|---|---|
| < 0.5 | < 1 | Severe | < 0.5 | Concerning | Orange |
| 0.5 ≤ PBC1 < 0.8 | 1 ≤ PBC2 < 3 | Moderate | 0.5 ≤ NRF < 0.8 | Acceptable | Yellow |
| 0.8 ≤ PBC1 < 0.9 | 3 ≤ PBC2 < 10 | Mild | 0.8 ≤ NRF < 0.9 | Compliant | None |
| ≥ 0.9 | ≥ 10 | None | > 0.9 | Ideal | None |

NRF = 0.9 falls in no row. The ChIP-seq standards pages state the preferred values as NRF > 0.9, PBC1 > 0.9 and PBC2 > 10, which use `>` where this table uses `≥`.

### ATAC-seq complexity tiers

| PBC1 | PBC2 | Bottlenecking | NRF | Complexity | Flag color |
|---|---|---|---|---|---|
| < 0.7 | < 1 | Severe | < 0.7 | Concerning | Orange |
| 0.7 ≤ PBC1 ≤ 0.9 | 1 ≤ PBC2 ≤ 3 | Moderate | 0.7 ≤ NRF ≤ 0.9 | Acceptable | Yellow |
| > 0.9 | > 3 | None | > 0.9 | Ideal | None |

### PBC (2012)

The [2012 quality metrics page](sources/pages/data-standards__2012-quality-metrics.md) used a single coefficient, PBC = N1 / Nd. N1 is the number of locations with exactly one unique read. Nd is the number of locations with at least one unique read. It set provisional tiers: 0 to 0.5 severe bottlenecking, 0.5 to 0.8 moderate, 0.8 to 0.9 mild, 0.9 to 1.0 none. Nuclease assays (DNase, MNase) are expected to score lower. Data already deduplicated score 1.0, which makes the metric meaningless.

## Enrichment

### FRiP

Fraction of reads in peaks. Usable reads in significantly enriched peaks divided by all usable reads. FRiP correlates positively with the number of called regions.

### SPOT

Signal Portion of Tags. The fraction of reads that fall in Hotspot-enriched regions, computed on a sample of 5 million reads. Only read 1 is used for paired-end data. It ranges from 0 (all noise) to 1 (all signal). Values compare only between runs with the same peak caller and parameters. Used for DNase-seq. The same definition notes that FAIRE "typically" needs more than 10 million reads to detect peaks reliably.

### TSS enrichment

Reads around a reference TSS set are aggregated from 2,000 bp upstream to 2,000 bp downstream (4,000 bp total). The profile is divided by the mean depth of the outer 100 bp at each end (200 bp total), so the flanks start at 1. The score is the normalized value at the center. Cutoffs depend on the TSS annotation used. Used for ATAC-seq.

### NSC

Normalized strand cross-correlation coefficient. The maximal forward/reverse strand cross-correlation (at the fragment-length shift) divided by the minimum over all shifts. The minimum possible value is 1 (no enrichment). The 2012 page calls values below 1.1 "relatively low".

### RSC

Relative strand cross-correlation coefficient. (Fragment-length peak minus background) divided by (read-length phantom peak minus background). The minimum is 0 (no signal). Highly enriched experiments score above 1. Values much less than 1 may indicate low quality.

### Auto low S/N

A 2012 flag for low signal to noise, scored by NSC < 1.09 and RSC < 0.9.

### Saturated peak detection

eCLIP peak detection is saturated if, after downsampling to 50% of usable reads and recalling peaks, lenient peaks in the downsampled data overlap 80% of the original significant peaks.

- Significant peak: log2(fold enrichment over background) ≥ 3 and −log10(p-value) ≥ 3.
- Lenient peak: log2 ≥ 1 and −log10 ≥ 2.

### Read cluster

A region that CLIPper finds denser in reads than the transcript-based background. Used for eCLIP.

### R value

For a k-mer (k = 4, 5, 6 or 7), its frequency in RBP pulldown reads divided by its frequency in input reads. The pulldown is the most enriched protein concentration unless noted. Used for RNA Bind-n-Seq.

## Peaks

### Relaxed peaks

Peaks called at a very low significance threshold. By design they sample noise as well as signal, so most may be false positives. They feed IDR and overlap steps and are not meant as final calls.

### Replicated peaks

Peaks from pooled replicates that are observed in both replicates or in both pseudoreplicates. The ATAC-seq pages require at least 50% overlap with a peak in each replicate.

### Pseudoreplicated peaks

Relaxed peaks that overlap at least 50% with peaks from both pseudoreplicates. Used for unreplicated histone ChIP-seq and ATAC-seq.

The portal [glossary](sources/pages/glossary.md#file-output-types) gives no overlap rule for replicated or pseudoreplicated peaks. It defines replicated peaks as regions "observed in both replicates" and does not mention pseudoreplicates. It defines pseudoreplicated peaks as peak calls "from two partitions".

### Conservative and optimal IDR peaks

IDR run on two true replicates gives the conservative set. IDR run on two pseudoreplicates of pooled data gives the optimal set. The optimal set is more sensitive when one replicate is weaker.

The glossary describes the optimal set as "the largest set of reproducible peak calls that pass an IDR threshold analyzing replicates". It does not mention pooled pseudoreplicates.

### IDR thresholded peaks

Peaks from IDR analysis of biological replicates, thresholded at an IDR cutoff of 0.05 ([TF ChIP-seq ENCODE4 outputs](sources/pages/chip-seq__transcription-factor-encode4.md)). The glossary gives no cutoff.

### IDR ranked peaks

"The set of peak calls ranked by IDR score" ([glossary](sources/pages/glossary.md#idr-ranked-peaks)).

### Pseudoreplicated IDR thresholded peaks

Peaks from two pseudoreplicates that "cross the same IDR threshold as for replicated experiments" ([glossary](sources/pages/glossary.md#pseudoreplicated-idr-thresholded-peaks)).

## Replicate concordance

### IDR

Irreproducible Discovery Rate. It ranks peaks in each replicate or pseudoreplicate and keeps peaks with consistent ranks. The terms page assigns it to ChIP-seq and ATAC-seq. The eCLIP and RAMPAGE pages also use it.

- Self-consistency ratio: consistency within a single dataset.
- Rescue ratio: consistency between datasets when the replicates are not comparable.

| Self-consistency ratio | Rescue ratio | Status | Flag color |
|---|---|---|---|
| Less than 2 | Less than 2 | Ideal | None |
| Less than 2 | Greater than 2 | Acceptable | Yellow |
| Greater than 2 | Less than 2 | Acceptable | Yellow |
| Greater than 2 | Greater than 2 | Concerning | Orange |

A ratio of exactly 2 falls in no row.

### Pearson correlation

The page defines it as the cosine of the angle between the regression lines of the two datasets, ranging from −1 to 1. WGBS compares two bedMethyl files.

### Spearman correlation

Pearson correlation computed on ranks. Used for RNA-seq.

### MAD

Replicate log-ratio standard deviation, named Median Absolute Deviation on the portal ([MAD page](sources/pages/data-standards__mad-qc.md)). MAD = 1.4826 × median |log2(X1_i / X2_i)|. It uses genes with FPKM > 1 in both replicates. The constant 1.4826 scales it to match a standard deviation. Used for RNA-seq, RAMPAGE and EN-TEx. The terms page writes the same formula with an unspecified log base. It reports these reference values with no pass or fail cutoff:

| Biosample type | Mean | 75th percentile | 99th percentile | Datasets |
|---|---|---|---|---|
| Immortalized cell line | 0.466 | 0.513 | 1.895 | 46 |
| Tissue | 0.729 | 0.934 | 1.662 | 24 |
| Primary cell | 0.66 | 0.83 | 1.451 | 80 |
| Stem cell | 0.433 | - | - | 1 |
| Induced pluripotent stem cell | 1.04 | - | - | 2 |
| In vitro differentiated cells | 0.5599 | 0.572 | 1.325 | 10 |

The stem cell and iPSC rows have too few datasets for percentiles.

### Raw overlap

The mean percentage of interactions shared by each pair of replicates. Used for ChIA-PET.

### Correlation of interaction frequency

The Spearman correlation, between each pair of replicates, of the number of PETs supporting each interaction genome-wide. Used for ChIA-PET.

## Targets

### Target category

ENCODE labels each ChIP-seq or CLIP target from the GO annotations of its gene ([target categorization](sources/pages/target-categorization.md)). Each matching GO term (or parent term) adds a label. Labels are scored by evidence code: EXP, IDA, IMP, IGI and IEP score 2. HTP, HDA, HMP, HGI, HEP and TAS score 1. IEA scores −1. Scores for the same label are summed, and the highest-scoring label wins. DNA binding, chromatin binding and ion binding yield "TF" only when no other data exist.

| Label | GO terms |
|---|---|
| TF | GO:0003700 DNA-binding transcription factor activity |
| RBP | GO:0003723 RNA binding; GO:0001070 RNA-binding transcription regulator activity |
| Cofactor | GO:0008134 transcription factor binding; GO:0003712 transcription coregulator activity |
| RNAP | GO:0005736 RNA polymerase I complex; GO:0016591 RNA polymerase II, holoenzyme; GO:0005666 RNA polymerase III complex |
| Chromatin remodeler | GO:0006325 chromatin organization; GO:0000118 histone deacetylase complex |
| Cohesin | GO:0007062 sister chromatid cohesion |
| DNA replication | GO:0006260 DNA replication |
| DNA repair | GO:0006281 DNA repair |
| histone | GO:0000788 nuclear nucleosome |
| TF (fallback) | GO:0003677 DNA binding; GO:0003682 chromatin binding; GO:0043167 ion binding |

The categorization page defers to the [glossary](sources/pages/glossary.md#target-categories) for definitions. The glossary spells out RBP as "RNA binding protein", RNAP as "RNA polymerase complex" and TF as "transcription factor". It defines four categories that have no GO terms on the categorization page:

| Category | Glossary definition |
|---|---|
| control | Non-specific targets or mock targets which serve as a placeholder for experiments that are used as controls. |
| other context | Protein with a unique function that does not belong to any other category. |
| recombinant protein | Genetically modified proteins. One common type of modification is epitope tagging. |
| tag | Short peptides that can be fused to proteins of interests and serve as antigens for antibodies. |

### Broad and narrow histone marks

The histone ChIP-seq pages assign read-depth standards by mark class.

| Class | Marks |
|---|---|
| Broad | H3F3A, H3K27me3, H3K36me3, H3K4me1, H3K79me2, H3K79me3, H3K9me1, H3K9me2, H4K20me1 |
| Narrow | H2AFZ, H3ac, H3K27ac, H3K4me2, H3K4me3, H3K9ac |
| Exception | H3K9me3 |

The glossary lists the same broad and narrow marks as target categories. It describes broad marks as "frequently detected across relatively long continuous stretches of DNA" and narrow marks across "relatively short" ones. It does not mention H3K9me3.

## Candidate cis-regulatory elements

The glossary defines cCRE subtypes by their signal signature and their distance to an annotated GENCODE TSS ([cCRE subtypes](sources/pages/glossary.md#candidate-cis-regulatory-element-ccre-subtypes)). Elements are classified "by integrative analysis of biochemical signatures such as histone modifications".

| Subtype | High signal | Low signal | TSS distance |
|---|---|---|---|
| promoter-like (PLS) | DNase, H3K4me3 | Not stated | within 200 bp |
| proximal enhancer-like (pELS) | DNase, H3K27ac | Not stated | within 2 kb |
| distal enhancer-like (dELS) | DNase, H3K27ac | Not stated | outside 2 kb |
| DNase-H3K4me3 | DNase, H3K4me3 | H3K27ac | outside 200 bp |
| CTCF-only | DNase, CTCF | H3K4me3, H3K27ac | Not stated |

A representative DNase hypersensitivity site (rDHS) comes from DHSs pooled across many DNase-seq datasets for one organism. They are "iteratively clustered and filtered to select a list of non-overlapping representative sites".

- The glossary does not define "high" or "low" signal.
- An element within 200 bp of a TSS with high H3K4me3 and high H3K27ac fits both PLS and pELS. The glossary states no precedence.

## Antibody characterization status

Each antibody lot carries characterizations, and each characterization gets a status ([antibody characterization process](sources/pages/help__antibody_characterization_process.md)).

| Status | Meaning |
|---|---|
| compliant | Meets the attached standards document. |
| exempt from standards | Exempted by the ENCODE Antibody Review Panel. |
| not compliant | Fails the attached standards document. |
| not reviewed | Imported from a previous or external project and not reviewed. Lots with this status are not used on current incoming data. |
| not submitted for review | Attempted or proposed, but the lab will not submit it for review. |
| in progress, pending dcc review | Internal states that should not appear on the public site. |

Except for histone-modification antibodies, a lot must be characterized in each cell type and species where it is used. Eligibility follows from compliant characterizations for that biosample type and species. See [antibodies](antibodies/README.md) for the standards themselves.

## Routine metadata audits

Every standards page ends with "The experiment must pass routine metadata audits in order to be released." These are the portal audits. See [audits](audits/README.md). The code behind them sometimes sets different cutoffs than the pages. Each assay's `portal-audits.md` leaf lists the differences.

# DNase-seq: ENCODE2

[Root](../../README.md) / [DNA accessibility](../README.md) / [DNase-seq](README.md) / ENCODE2

Sources:

| Label | Document | Date | URL |
|---|---|---|---|
| 2009 | DNase-seq and FAIRE-seq Standards, 1 page. Printed title "Requirements for a DNase-seq and FAIRE-seq experiments". | 2009 January | [PDF](https://www.encodeproject.org/documents/ff0160c5-6671-4b5c-81e1-2dbabe0a97cb/@@download/attachment/DNase-seq_FAIRE-seq_standards_2009_Jan.pdf) |
| 2010 | Chromatin and Transcription Factor Data Standards v1.0, 17 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating Chromatin and Transcription Factor Data". | Version 1.0, April 09, 2010 | [PDF](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) |
| 2011 | ChIP-seq, ChIP-chip, DNase-seq, FAIRE-seq and DNAme Standards v2.0, 20 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating ChIP, DNase, FAIRE, and DNA Methylation Genome Wide Location Data". | Version 2.0, July 20, 2011 | [PDF](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) |
| 2012 | 2012 Quality Metrics for integrative analysis publications, a portal page | Not printed | [Page](https://www.encodeproject.org/data-standards/2012-quality-metrics/) ([snapshot](../../sources/pages/data-standards__2012-quality-metrics.md)) |

The portal lists the three PDFs as [previous guidelines](../../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md).

Scope: DNase-seq rules. The 2009 document covers only DNase-seq and FAIRE-seq. The 2010 and 2011 documents cover them in section III and add submission rules in section V. Rules shared with FAIRE-seq also appear in [FAIRE-seq](../faire-seq.md). Cell culture rules from section I are in [cell culture](../../general/cell-culture.md).

All three PDFs open the DNase section with "we suggest the following requirements". The 2009 and 2010 replicate tests are proposals ("We propose to require"). Their parameters "will have to be revisited" (2009) or "may have to be revisited" (2010).

## Controls

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Input sequencing | Not required "from additional cell types" | will not require | 2009 p1 |
| Input sequencing | Deeply sequenced matched input is "always preferable". Input from every cell type "is not required at this time". | preferable; not required | 2010 p7 |
| Input sequencing | The 2010 rule without "at this time" | preferable; not required | 2011 p11 |
| Promoter peaks in input | Likely open chromatin. They are not excluded from analysis. | should not | 2009 p1; 2010 p7; 2011 p11 |

## Sequencing depth

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Depth decision | "a decision must be made regarding adequate level of coverage". Depth should follow the ability to find regions that other methods also find, such as tiled arrays, qPCR or Southern blots. 2009 gives no number. | must; propose | 2009 p1; 2010 p7; 2011 p11 |
| Depth | "typically 20-50 million reads" | typically | 2010 p7; 2011 p11 |
| Replicate depth | "it is best to sequence replicates to a similar depth". Similar depth "matters most" at "the lower end of the recommended read depth". | best | 2011 p11 |

## Replicates and concordance

2009 and 2010 propose tests a) and b) plus either option of c).

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| [Biological replicates](../../GLOSSARY.md#biological-replicate) | At least two | necessary | 2009 p1; 2010 p7; 2011 p11 |
| More than two | No "significant gain in information" beyond two replicates "when they are in reasonable agreement" | stated | 2009 p1; 2010 p7; 2011 p11 |
| a) Mapped reads | Within a factor of two of each other | should | 2009 p1; 2010 p7 |
| b) Target list lengths | Within a factor of two of each other | should | 2009 p1; 2010 p7 |
| c) option I | Intersect the top 40% of one target list with the whole other list. Require 90% overlap. Repeat for the reciprocal. | require | 2009 p1 |
| c) option I | The same test with 80% overlap | require | 2010 p7 |
| c) option II | A target list scored from all reads of both replicates shares more than 75% of targets with each replicate | must | 2009 p1; 2010 p8 |
| Peak overlap | At least 80% of the top 50,000 peaks in one replicate are detected in the top 100,000 peaks of the other, and vice-versa | recommend | 2011 p11 |

## Peak calling

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Peak callers | "Fseq", Hotspot "and others" | can | 2011 p12 |
| Significance, method 1 | Fit a gamma distribution for p-values. Contiguous regions with p-values below 0.05 "can be considered significant". | can | 2011 p12 |
| Significance, method 2 | [IDR](../../GLOSSARY.md#idr), as described for ChIP-seq in section IIb | can | 2011 p12 |

2009 and 2010 name no peak caller or significance threshold.

## 2012 quality metrics

The 2012 page keeps DNase-seq datasets in their own spreadsheet. It sets no DNase-seq cutoff.

| Metric | Rule | ENCODE wording | Source |
|---|---|---|---|
| [SPOT](../../GLOSSARY.md#spot) | Computed from a sample of 5 million reads. Comparable only with the identical peak caller and parameters. | stated | 2012 |
| [PBC](../../GLOSSARY.md#pbc-2012) | 0-0.5 severe, 0.5-0.8 moderate, 0.8-0.9 mild, 0.9-1.0 no bottlenecking | provisionally | 2012 |
| PBC for nuclease assays | DNase and MNase assays "are expected to recover the same read multiple times", which lowers PBC | expected | 2012 |
| PBC observed | 77% of ENCODE DNase datasets have no or mild bottlenecking | stated | 2012 |

## Data submission

Section V rules "For ChIP-seq, DNase-seq and FAIRE-seq", plus the metadata every submission needs.

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Raw data | To GEO (Small Read Archive; SRA) at the same time as DCC submission | should | 2010 p9 |
| Raw data | To both GEO/SRA and the DCC | should | 2011 p13 |
| Dual SRA and GEO submission | Allowed. Sequences go to the SRA. Metadata, processed data and a link to the SRA accession go to GEO. | can; should | 2010 p10; 2011 p13 |
| Project flag | Marked as mod/ENCODE through the appropriate genome project ID | should | 2010 p9; 2011 p13 |
| Replicates | Each submitted independently | should | 2010 p10; 2011 p13 |
| Input | Input signal or alignments, "but not for DNase/FAIRE Tier 3 lines" | should | 2010 p10; 2011 p13 |
| Processed data | DNase signal or alignments, interpreted signal, called peaks, FASTQ files and metadata with the peak caller version | should | 2010 p10; 2011 p13-14 |
| Peak format | DNase is listed as a point-source example. Each peak has a single-base peak position plus start and end. Scores use a three-slot model of signal value, P-value and Q-value. Slots 2 and 3 are optional. The investigator decides whether the data fit point-source peaks, broad regions or both. | should; optional | 2010 p10-11; 2011 p14 |
| Peak caller metadata | Version and parameters in a free-form field | should; required | 2010 p11 |
| DCC rubric | Sign-off that the experiment was done in duplicate and meets quality standards. A cell growth protocol. Reads and targets per replicate and merged, with top 40% overlap results. The linked control track. | requires | 2010 p12 |
| DCC metadata | Investigator, organism or cell line and protocol. Replicate type, with "at least two must be performed". Peak caller, parameters, threshold and reference genome. Reads and targets per replicate and merged. Downstream validation results. The control track. | requires; must | 2011 p14-15 |
| Failed standards | Explain why and "FLAG the track on the browser" | stated | 2010 p12 |
| Failed standards | "an explanation is required" | required | 2011 p15 |

## Changes across versions

The 2017 column is the [experimental guidelines](experimental-guidelines.md). The last column is the [ENCODE3](encode3.md) and [ENCODE4](encode4.md) pages ([ENCODE3 snapshot](../../sources/pages/data-standards__dnase-seq.md), [ENCODE4 snapshot](../../sources/pages/data-standards__dnase-seq-encode4.md)). The two pages share their thresholds.

| Criterion | 2009 | 2010 | 2011 | 2017 guidelines | ENCODE3/ENCODE4 portal pages |
|---|---|---|---|---|---|
| Biological replicates | At least two, "necessary" | Same | Same | At least two (should). The second may be waived for anisogenic or limited primary samples. | Two or more (should). EN-TEx or other rare samples may be exempted. |
| Replicate agreement | Reads and list lengths within a factor of two. Top 40% overlap of 90%, or more than 75% shared with the pooled list. | Same, with a top 40% overlap of 80% | At least 80% of the top 50,000 peaks in the other replicate's top 100,000 | Gene-level Pearson > 0.9 isogenic, > 0.85 anisogenic | Same as 2017 |
| Depth | No number | "typically 20-50 million reads" | Same | Uniquely mapping reads: ~50 million DHS target, 20 million DHS minimum, a second DHS target of 150-200 million, 100 million minimum for footprints | Uniquely mapping reads: 20 million for SPOT, 50 million recommended, 100 million for footprints, 150-200 million paired-end for footprinting depth |
| Replicate depth | Mapped reads within a factor of two | Same | Similar depth is "best" | Not stated | Not stated |
| Input control | Not required "from additional cell types" | Preferable. Not required from every cell type "at this time". | Preferable. Not required from every cell type. | Not stated | Not stated |
| Peak significance | Not stated | Not stated | Gamma-fit p-values below 0.05, or IDR | Not stated | ENCODE4 pipeline: Hotspot2 peaks at 5% and 0.1% FDR |
| SPOT | Not stated | Not stated | Not stated | Must be calculated and provided. 0.4 or higher is high quality. 0.3-0.4 and "0.25-3" are acceptable under conditions. < 0.25 is unacceptable. | ≥ 0.4 Good, 0.3 - 0.4 Acceptable, < 0.25 Poor. 0.25 - 0.3 is "minimally acceptable in certain circumstances". |
| Duplicates | Not stated | Not stated | Not stated | No more than 5%. SPOT on de-duplicated data or duplicate rates less than 5%. | SPOT on de-duplicated data or duplicate rates "<5%" |
| Mitochondrial reads | Not stated | Not stated | Not stated | No more than 10% | < 10% Good, 10 - 15% Acceptable, > 15% Poor |
| Uniquely mapping reads, excluding mitochondrial reads | Not stated | Not stated | Not stated | > 80% optimal, in no case less than 75% | > 75% Good, 65 - 75% Acceptable, < 65% Poor |
| Library complexity | Not stated | Not stated | Not stated | "less informative" for DNase-seq. Per-protocol duplication levels are deferred to "the DNase-seq data standards page". | Not stated |
| Read length | Not stated | Not stated | Not stated | 36 bp minimum | 36 bp minimum |
| Assembly | Not stated | Not stated | Reference genome reported | GRCh38 or mm10 | GRCh38 or mm10 |
| Release | Not stated | Rubric sign-off. Failures explained and flagged. | Failures need an explanation. | Passes routine metadata audits. SPOT < 0.25 only for the most difficult to procure primary tissues. | Passes routine metadata audits. Lower scoring data "may be used with appropriate caution" in very rare cases. |

## Conflicts and gaps

- 2010 and 2011 give "typically 20-50 million reads" without saying mapped or uniquely mapped, or per replicate. 2011 then calls it "the recommended read depth".
- 2009 and 2010 do not define "target list" and set no peak caller or threshold. The list-length and overlap tests depend on these unstated cutoffs. Neither defines when two targets overlap.
- 2010 lowers the top 40% overlap from 90% (2009) to 80%. The other 2009 tests carry over unchanged.
- Option II says "must" inside a list introduced as "We propose to require" (2009, 2010).
- 2011 replaces the 2009 and 2010 tests with a fixed-count peak overlap (top 50,000 against top 100,000). It turns the factor-of-two read rule into advice ("it is best").
- The input exception names "DNase/FAIRE Tier 3 lines" (2010 p10, 2011 p13). 2011 does not define Tier 3. 2010 describes Tier 3 lines as "cell lines new to the consortium" with no standard gene expression profile (p2).
- The 2012 SPOT uses a 5 million read sample. The 2017 guidelines and the portal pages want at least 20 million uniquely mapping reads for SPOT.
- The 2012 PBC tiers share their edges (0.5, 0.8, 0.9).
- Library complexity. The 2012 page expects lower PBC for nuclease assays such as DNase. The 2017 guidelines call general complexity measures "less informative" for DNase-seq. The portal pages set no complexity metric.

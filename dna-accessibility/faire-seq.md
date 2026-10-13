# FAIRE-seq: ENCODE2

[Root](../README.md) / [DNA accessibility](README.md) / FAIRE-seq

Sources:

| Label | Document | Date | URL |
|---|---|---|---|
| 2009 | DNase-seq and FAIRE-seq Standards, 1 page. Printed title "Requirements for a DNase-seq and FAIRE-seq experiments". | 2009 January | [PDF](https://www.encodeproject.org/documents/ff0160c5-6671-4b5c-81e1-2dbabe0a97cb/@@download/attachment/DNase-seq_FAIRE-seq_standards_2009_Jan.pdf) |
| 2010 | Chromatin and Transcription Factor Data Standards v1.0, 17 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating Chromatin and Transcription Factor Data". | Version 1.0, April 09, 2010 | [PDF](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) |
| 2011 | ChIP-seq, ChIP-chip, DNase-seq, FAIRE-seq and DNAme Standards v2.0, 20 pages. Printed title "ENCODE and modENCODE Guidelines For Experiments Generating ChIP, DNase, FAIRE, and DNA Methylation Genome Wide Location Data". | Version 2.0, July 20, 2011 | [PDF](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) |
| 2012 | 2012 Quality Metrics for integrative analysis publications, a portal page | Not printed | [Page](https://www.encodeproject.org/data-standards/2012-quality-metrics/) ([snapshot](../sources/pages/data-standards__2012-quality-metrics.md)) |

The portal lists the three PDFs as [previous guidelines](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md).

Scope: FAIRE-seq appears only in these ENCODE2-era documents. The current [experiment guidelines index](../sources/pages/about__experiment-guidelines.md) and [data standards index](../sources/pages/data-standards.md) do not list it. The 2009 and 2010 documents set one rule set for DNase-seq and FAIRE-seq. The DNase-seq view of the same documents is [DNase-seq ENCODE2](dnase-seq/encode2.md). Cell culture rules from section I of the 2010 and 2011 documents are in [cell culture](../general/cell-culture.md).

All three PDFs open the section with "we suggest the following requirements". The 2009 and 2010 replicate tests are proposals ("We propose to require"). Their parameters "will have to be revisited" (2009) or "may have to be revisited" (2010).

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
| Depth | "typically 20-50 million reads", for DNase and FAIRE together | typically | 2010 p7; 2011 p11 |
| Replicate depth | "it is best to sequence replicates to a similar depth". Similar depth "matters most" at "the lower end of the recommended read depth". | best | 2011 p11 |
| Peak detection | "more than 10 million reads are typically required to reliably detect peaks" | typically | 2012 |

## Replicates and concordance

2009 and 2010 propose tests a) and b) plus either option of c).

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| [Biological replicates](../GLOSSARY.md#biological-replicate) | At least two | necessary | 2009 p1; 2010 p7; 2011 p11 |
| More than two | No "significant gain in information" beyond two replicates "when they are in reasonable agreement" | stated | 2009 p1; 2010 p7; 2011 p11 |
| a) Mapped reads | Within a factor of two of each other | should | 2009 p1; 2010 p7 |
| b) Target list lengths | Within a factor of two of each other | should | 2009 p1; 2010 p7 |
| c) option I | Intersect the top 40% of one target list with the whole other list. Require 90% overlap. Repeat for the reciprocal. | require | 2009 p1 |
| c) option I | The same test with 80% overlap | require | 2010 p7 |
| c) option II | A target list scored from all reads of both replicates shares more than 75% of targets with each replicate | must | 2009 p1; 2010 p8 |
| Peak overlap | At least 50% of the top 50,000 peaks in one replicate are detected in the top 200,000 peaks of the other, and vice-versa | recommend | 2011 p11 |

## Peak calling

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Peak callers | "Fseq", Hotspot "and others" | can | 2011 p12 |
| Significance, method 1 | Fit a gamma distribution for p-values. Contiguous regions with p-values below 0.05 "can be considered significant". | can | 2011 p12 |
| Significance, method 2 | [IDR](../GLOSSARY.md#idr), as described for ChIP-seq in section IIb | can | 2011 p12 |

## 2012 quality metrics

The 2012 page keeps FAIRE-seq datasets in their own spreadsheet. It sets no FAIRE-seq cutoff.

| Metric | Rule | ENCODE wording | Source |
|---|---|---|---|
| [SPOT](../GLOSSARY.md#spot) | Computed from a sample of 5 million reads. Comparable only with the identical peak caller and parameters. | stated | 2012 |
| [PBC](../GLOSSARY.md#pbc-2012) | 0-0.5 severe, 0.5-0.8 moderate, 0.8-0.9 mild, 0.9-1.0 no bottlenecking | provisionally | 2012 |
| PBC observed | 98% of ENCODE FAIRE datasets have no or mild bottlenecking | stated | 2012 |

## Data submission

Section V sets one list of rules "For ChIP-seq, DNase-seq and FAIRE-seq". The list is in [DNase-seq ENCODE2](dnase-seq/encode2.md#data-submission). FAIRE peaks count as point-source peaks. Input signal is not submitted for "DNase/FAIRE Tier 3 lines" (2010 p10; 2011 p13).

## Conflicts and gaps

- The current guidelines and data standards indexes list no later FAIRE-seq standard.
- The 2012 page says FAIRE "typically" needs more than 10 million reads to detect peaks reliably. Its SPOT sample is 5 million reads.
- 2010 and 2011 give "typically 20-50 million reads" for DNase and FAIRE together. They do not say mapped or uniquely mapped, or per replicate. The 2012 figure is a floor for peak detection.
- 2011 sets a looser overlap for FAIRE-seq than for DNase-seq. FAIRE needs 50% of the top 50,000 peaks within the other replicate's top 200,000. DNase needs 80% within the top 100,000.
- 2010 lowers the top 40% overlap from 90% (2009) to 80%.
- 2009 and 2010 do not define "target list" and set no peak caller or threshold.
- 2011 does not define the "Tier 3" lines exempt from input submission. 2010 describes Tier 3 lines as "cell lines new to the consortium" (p2).

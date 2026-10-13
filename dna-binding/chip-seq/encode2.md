# ChIP-seq: ENCODE2

[Root](../../README.md) / [DNA binding](../README.md) / [ChIP-seq](README.md) / ENCODE2

## Sources

| Label | Document | Date | URL |
|---|---|---|---|
| TF page | Transcription Factor ChIP-seq Data Standards and Processing Pipeline, section "Previous Standards (ENCODE 2)" ([snapshot](../../sources/pages/chip-seq__transcription_factor.md)) | Updated June 2017 | [page](https://www.encodeproject.org/chip-seq/transcription_factor/) |
| Histone pages | Histone ChIP-seq Data Standards and Processing Pipeline ([snapshot](../../sources/pages/chip-seq__histone.md)) and its ENCODE 4 version ([snapshot](../../sources/pages/chip-seq__histone-encode4.md)), section "Previous Standards (ENCODE 2)" in both | Updated June 2017; July 2020 | [page](https://www.encodeproject.org/chip-seq/histone/), [ENCODE4 page](https://www.encodeproject.org/chip-seq/histone-encode4/) |
| Old TF page | ChIP-seq of Transcription Factors, section "ENCODE2 Standards" ([snapshot](../../sources/pages/chip-seq-old__transcription-factor.md)) | Not printed | [page](https://www.encodeproject.org/chip-seq-old/transcription-factor/) |
| 2008 | Recommended Standards for ChIP-Seq Experiments, Version 1.0 (portal title: ChIP-seq Standards v1.0), 2 pages | November 5, 2008 | [PDF](https://www.encodeproject.org/documents/59deae6e-231c-4a0e-8509-ed3557e3861a/@@download/attachment/ChIP-seq_standards_v1_2008_Nov.pdf) |
| 2010 | ENCODE and modENCODE Guidelines For Experiments Generating Chromatin and Transcription Factor Data, Version 1.0 (portal title: Chromatin and Transcription Factor Data Standards v1.0), 17 pages | April 09, 2010 | [PDF](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) |
| 2011 | ENCODE and modENCODE Guidelines For Experiments Generating ChIP, DNase, FAIRE, and DNA Methylation Genome Wide Location Data, Version 2.0 (portal title: ChIP-seq, ChIP-chip, DNase-seq, FAIRE-seq and DNAme Standards v2.0), 20 pages | July 20, 2011 | [PDF](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) |
| Landt 2012 | Landt SG et al. ChIP-seq guidelines and practices of the ENCODE and modENCODE consortia. Genome Res 22(9):1813-31. PMID 22955991. | 2012 Sep | [PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3431496/) |
| 2012 QM | 2012 Quality Metrics for integrative analysis publications ([snapshot](../../sources/pages/data-standards__2012-quality-metrics.md)) | Not printed | [page](https://www.encodeproject.org/data-standards/2012-quality-metrics/) |

The pages cite Landt 2012 for the ENCODE2 standards and the 2010 document for ENCODE2 antibodies. The ENCODE3 [TF](../../sources/pages/chip-seq__transcription-factor-encode3.md) and [histone](../../sources/pages/chip-seq__histone-encode3.md) pages (July 2020) repeat the same ENCODE2 sections. The [TF ENCODE4 page](../../sources/pages/chip-seq__transcription-factor-encode4.md) has none. The [previous guidelines page](https://www.encodeproject.org/about/experiment-guidelines/experiment-guidelines-previous/) ([snapshot](../../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md)) lists Landt 2012 and the three PDFs under ChIP-seq.

PDF rows give the printed page. Landt 2012 rows name a box, a figure legend or a main-text section. Shortened section names:

| Short name | Landt 2012 heading |
|---|---|
| Replication | Replication, sequencing depth, library complexity, and site discovery |
| Browser inspection | Browser inspection and previously known sites |
| FRiP | Measuring global ChIP enrichment (FRiP) |
| Cross-correlation | Cross-correlation analysis |
| IDR | Consistency of replicates: Analysis using IDR |
| Reporting | Guidelines for reporting ChIP-seq data |

Scope: ENCODE2 ChIP-seq standards for transcription factors and histone marks, in ENCODE (human, mouse) and modENCODE (fly, worm). Landt 2012 sorts targets by signal shape. Point-source factors give highly localized signal (most TFs, TSS and enhancer marks). Broad-source factors cover large domains (e.g., H3K9me3, H3K36me3). Mixed-source factors do both (e.g., Pol II). Landt 2012 says its criteria are not meant to be "applied rigidly to all studies".

Rows that belong to other leaves:

| Topic | Leaf |
|---|---|
| Antibody characterization | [ENCODE2 antibodies](../../antibodies/encode2.md) |
| Cell culture | [Cell culture](../../general/cell-culture.md) |
| Data submission, metadata, peak formats, release of failing data, data use | [Data reporting](../../general/data-reporting.md) |
| ChIP-chip only | [ChIP-chip](../chip-chip.md) |
| DNase-seq and FAIRE-seq | [DNase-seq ENCODE2](../../dna-accessibility/dnase-seq/encode2.md), [FAIRE-seq](../../dna-accessibility/faire-seq.md) |
| DNA methylation | [RRBS](../../dna-methylation/rrbs.md), [Methyl27](../../dna-methylation/methyl27.md), [Methyl-seq](../../dna-methylation/methyl-seq.md) |

## Design and replicates

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| [Biological replicates](../../GLOSSARY.md#biological-replicate) | At least two. No significant gain is expected beyond two replicates in reasonable agreement. | necessary | 2008 p1; 2010 p13 |
| Biological replicates | At least 2, for ChIP-chip or ChIP-seq. Two recommended for ChIP-seq. | should; recommended | 2010 p5 |
| Replicates | At least two | must | 2011 p7 |
| Replicate type | Duplicate experiments on two independent samples (biological replicates). With RNA Pol II, more than two replicates did not significantly increase the targets found. | recommended | 2011 p7 |
| Biological replicates | All ChIP on two independent biological replicates | "set as our standard" | Landt 2012 Replication |
| Extra replicates | Experiments are performed at least twice. A third replicate follows if the [IDR](../../GLOSSARY.md#idr) standard is not reached. Experiments with poor quality metrics got additional replicates. | stated | Landt 2012 Box 2; Replication |
| Biological replicates | Two or more, [isogenic](../../GLOSSARY.md#isogenic-replicate) or [anisogenic](../../GLOSSARY.md#anisogenic-replicate) | should | TF page; Histone pages |
| Biological replicates | Two or more, isogenic or anisogenic | must | Old TF page |
| Replicate matching | Same read length and run type | must | Old TF page |
| Read length | Minimum 36 bp, longer encouraged | stated | Old TF page |
| Platform | Indicated | must | Old TF page |
| Protocols | Standard ENCODE protocols validated and optimized for each new cell line, tissue type or sonicator | should | Landt 2012 Fig 1 legend |
| Antibodies | Characterized to the consortium standards for ENCODE2 data. The pages link the 2010 document. See [ENCODE2 antibodies](../../antibodies/encode2.md). | must | TF page; Histone pages; Old TF page |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | should (Old TF page: must) | TF page; Histone pages; Old TF page |

## Controls

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Matched reference | A sequenced reference sample from the same cell line and cellular condition | necessary | 2008 p1; 2010 p13 |
| Controls per cell line | One control sample per cell line serves ChIP-seq of different TFs | "only one control sample need be produced" | 2008 p1; 2010 p13 |
| Control depth | Input DNA sequenced to at least the greatest depth of any matching individual TF ChIP-seq experiment | should | 2008 p1; 2010 p13 |
| Control experiments | Performed, for ChIP-seq and ChIP-chip | must | 2011 p7 |
| Control types | Input DNA (from cells crosslinked and sonicated like the sample) or IgG (a control IP with an antibody that recognizes no DNA or chromatin protein) | stated | 2011 p7; Landt 2012 Control sample |
| Control depth | Similar or greater depth | needs | 2011 p7 |
| Induced binding | A parallel ChIP on cells in the uninduced condition | "a potential appropriate control" | 2011 p7 |
| Epitope-tagged factors | IP with the same anti-tag antibody in otherwise identical cells that lack the construct or do not express the tagged factor. Scoring can be compared against these controls or input DNA. | recommended; can | 2011 p4, p7; Landt 2012 Box 1 |
| Amplified samples | Control DNA prepared with the same amplification procedure | must | 2011 p7 |
| Biosample state | A separate control for each cell line, developmental stage and condition or treatment | need to be performed (2011); "perform" (Landt 2012) | 2011 p7; Landt 2012 Control sample |
| Control library | One for each cell type, tissue or embryo collection, sequenced to at least equal to, and preferably greater than, the most deeply sequenced experimental library | preferably | Landt 2012 Box 2 |
| Batches | A control from every chromatin preparation and sonication batch if cost allows. Fewer can be justified. | should; "as much as possible" (sonication batches) | Landt 2012 Box 2; Control sample |
| Protocol changes | A new control whenever culture conditions, treatments, chromatin shearing protocol or instrumentation change significantly | "always performed" | Landt 2012 Box 2 |
| Control depth | Input or IgG sequenced to at least equal to, and preferably larger than, the ChIP sample | preferably | Landt 2012 Control sample |
| IgG complexity | The IgG IP recovers enough DNA for a library as complex as the experimental samples | important | Landt 2012 Control sample |
| Library protocol | Identical protocols for ChIP and control libraries (e.g., PCR cycles, fragment size) | stated | Landt 2012 Control sample |
| Peak calling | An appropriate control is used | important | Landt 2012 Peak calling |
| Portal summary | Input or IgG control experiment with matching run type, read length and replicate structure. The old page omits "input or IgG". | should | TF page; Histone pages; Old TF page |

## Read depth

Units differ by source. 2008 and 2010 count mapped reads. 2011 and Landt 2012 mostly count uniquely mapped reads. The pages count [usable fragments](../../GLOSSARY.md#read-depth-units). Compare values only within a unit.

### Saturation criteria

All three PDFs give the same rule. One of three criteria "should" be used.

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| a) Saturation | Once target counts begin to saturate: ≥ 95% of the extrapolated total number of targets. 2011 prints "³ 95%". | should | 2008 p1; 2010 p13; 2011 p16 |
| a) Example | HeLa-S3 Pol II: 12 million mapped reads yield greater than 95% of the approximately 30,000 extrapolated targets | stated | 2008 p1; 2010 p13; 2011 p16 |
| b) No saturation | Detect 99% of targets with at least 2-fold enrichment over control using 90% of the data | should | 2008 p1; 2010 p13; 2011 p16 |
| c) Fallback | "If either a) or b) are not satisfied", sequence to the fallback minimum below | should | 2008 p1; 2010 p13; 2011 p16 |

### Minimum depth

| Scope | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Human, fallback c) | At least 12 million mapped reads. Per replicate or per experiment is not stated. | should | 2008 p1 |
| Worm or fly, fallback c) | 3-4 million mapped reads. One Solexa/Illumina lane typically gives 3-4 million mapped reads, so human needs 3-4 lanes and worm or fly one lane. | should | 2008 p1 |
| Mammalian, fallback c) | Starting June 1, 2010: at least 10 million mapped reads per replicate | should | 2010 p13 |
| Worm or fly, fallback c) | A minimum of 4 million mapped reads per replicate | minimum | 2010 p13 |
| Mammalian TFs and sharp-peak chromatin modifications | From June 1, 2010: a minimum of 10 million uniquely mapped reads per replicate. "the previous requirement was 3 million reads". | minimum ("established as a standard") | 2011 p7 |
| Flies and worms | 2 million uniquely mapped reads | minimum | 2011 p7 |
| Mammalian, fallback c) | Starting June 1, 2010: at least 10 million uniquely mapped reads per replicate | should | 2011 p16 |
| Worm or fly, fallback c) | A minimum of 2 million mapped reads per replicate | minimum | 2011 p16 |
| Broad chromatin modifications (e.g., H3K27me3, H3K36me3) | No figure established. Deeper coverage is necessary. Many groups use 15-20 million reads per replicate in mammalian cells. | necessary | 2011 p7 |
| Mixed or broad marks, flies | At least 5-10 million reads | needed ("Recent analysis suggests") | 2011 p7 |
| Point-source, mammalian | ≥10 million uniquely mapping reads per replicate | goal | Landt 2012 Box 2 |
| Point-source, mammalian | A minimum of 10 million uniquely mapped reads per biological replicate, giving a minimum of 20 million uniquely mapped reads per factor. The same section calls 20 million mapped reads the minimum for point-source TF experiments. | minimum | Landt 2012 Replication |
| Point-source, worm and fly | ≥2 M uniquely mapped reads per replicate (Box 2). A minimum of 2 million uniquely mapped reads per replicate (main text). | objective; minimum | Landt 2012 Box 2; Replication |
| Broad-source histone marks, mammalian | ≥20 million uniquely mapping reads | provisional target | Landt 2012 Box 2 |
| Broad-source, Drosophila | ≥5 million reads | target | Landt 2012 Box 2 |
| Broad enrichment | The right number is "currently under investigation". At least 20 million uniquely mapped reads per replicate (mammalian) and 5 million (worms and flies) are produced for most experiments. | stated | Landt 2012 Replication |
| TF | 10 million usable fragments per replicate. The old page counts single-end data per replicate and paired-end data "per mate pair". | should | TF page; Old TF page |
| Narrow-peak histone | 10 million usable fragments per replicate | should | Histone pages |
| Broad-peak histone | 20 million usable fragments per replicate | should | Histone pages |

### Other depth rules

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Older data sets | Did not require these depths and "were acceptable under standards at the time" | stated | 2010 p13; 2011 p16 |
| Replicate parity | A similar number of reads for each replicate | recommended | 2011 p7 |
| Saturation evidence | Studies of several factor and antibody pairs needed 14M to 40M uniquely mapped reads to approach saturation. Some showed no saturation. | stated | 2011 p7 |
| Uniquely mappable reads | Reported for each dataset. "the number of reads required is not known with certainty". | stated | 2012 QM |

## Library complexity

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Distinct reads | At least 80% of reads distinct (nonidentical) | should | 2011 p7, p16 |
| Complexity check | Analyze the number of distinct (non-redundant) reads so peaks are not PCR amplification artifacts | should | 2011 p8 |
| Complexity and cross-correlation | Inspect peaks and determine library complexity. Read complexity alongside the phantom peak coefficient. Low complexity and high PCR bottlenecking can raise that coefficient. | important | 2011 p16-17 |
| [NRF](../../GLOSSARY.md#nrf), mammalian point-source | ≥0.8 for 10 million reads | target | Landt 2012 Box 2 |
| NRF, modENCODE point-source | ≥0.8 | objective | Landt 2012 Box 2 |
| NRF, mammalian broad-source histone marks | ≥0.8 | provisional target | Landt 2012 Box 2 |
| NRF, plotted threshold | > 0.8 | "Current ENCODE thresholds" | Landt 2012 Fig 7 legend |
| PBC | PBC = N1/Nd with provisional tiers, see [PBC (2012)](../../GLOSSARY.md#pbc-2012). 82% of TF ChIP, 89% of histone ChIP and 97% of control datasets show no or mild bottlenecking. | stated ("Provisionally") | 2012 QM |
| NRF, [PBC1](../../GLOSSARY.md#pbc1), [PBC2](../../GLOSSARY.md#pbc2) | NRF > 0.9, PBC1 > 0.9, PBC2 > 10 | preferred | TF page; Histone pages; Old TF page |

Landt 2012 computes NRF on uniquely mappable reads. NRF falls with depth, and the target is quoted at 10 million reads.

## Replicate concordance

### Overlap tests

2008 and 2010 require both factor-of-two checks plus either option I or option II.

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Per-replicate lists | Replicates analyzed and reported as independent target site lists | required | 2008 p1 |
| Comparison basis | Target lists identified using a common number of mapped reads | "propose to require" | 2008 p1; 2010 p13 |
| Mapped reads | Within a factor of two between replicates | should | 2008 p1; 2010 p13 |
| Target list length | Within a factor of two | should | 2008 p1; 2010 p13 |
| Option I, top 40% | Top 40% of one list against the entire other list: 90% overlap, repeated for the reciprocal | require | 2008 p1 |
| Option I, top 40% | The same test at 80% overlap. The longer list may be trimmed to the length of the shorter. | require | 2010 p14 |
| Option II, all reads | Lists scored using all available reads share more than 75% of targets | "propose to require" | 2008 p2; 2010 p14 |
| Top targets | A significant correlation coefficient for the top targets. No value given. | should | 2010 p5 |
| Overlap | 80% of the top 40% of one list overlaps the other list | should | 2010 p5 |
| Non-conforming experiments | Noted, and submitted with a paragraph on reproducibility (reads and targets per replicate, overlap) | should | 2010 p14 |
| Mapped reads and targets | Within two fold of one another | recommended | 2011 p7 |
| Top 40% | 80% of the top 40% of targets from one replicate overlap the other replicate's list | should | 2011 p7 |
| Pooled list | Lists scored using all reads from both replicates share more than 75% of targets with each replicate | must | 2011 p8 |
| Pooling | Reads from replicates that meet the criteria are usually pooled | stated | 2011 p8 |
| IDR | Another alternative for assessing replicate agreement | stated | 2011 p8 |
| Broad marks | Reproducibility metrics are being developed | stated | 2011 p8 |

### IDR

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Scope | Mammalian cells and point-source features only. Broad-peak metrics are "still being determined". | stated | Landt 2012 Box 3 |
| Peak calling before IDR | Relax the default stringency so the noise component is represented | advised | Landt 2012 IDR |
| Threshold | 1% | stated | Landt 2012 Box 3 |
| Threshold | A single 1% threshold across datasets of varying quality | can | 2011 p18 |
| Replicates against pooled pseudoreplicates | Regions from IDR between replicates are at least 50% of the regions from IDR between two pooled [pseudoreplicates](../../GLOSSARY.md#pseudoreplicate), written Np/Nt < 2 | require | Landt 2012 Box 3; IDR |
| Replicate balance | Significant peaks from IDR on each replicate's own two-way read split are within a factor of 2, written N1/N2 < 2 | recommend | Landt 2012 Box 3; IDR |
| Reproducible peaks | Cut-offs set by IDR, typically at 1% | typically | Landt 2012 Box 2 |
| Historical heuristic | 80% of the top 40% overlap, or more than 75% shared using all reads. The heuristic was "previously used as a standard". | stated | Landt 2012 Box 3 |
| Correspondence curve | A tool for diagnosis and QC, "not adequate for selecting signals" | stated | 2011 p17 |
| TF concordance | Passes if both the IDR rescue and self-consistency ratios are less than 2 | "passes" | TF page; Old TF page |
| 2012 peak counts | Self-consistent peaks (IDR on two pseudoreplicates of one dataset) and replicate-consistent peaks (IDR on a replicate pair), at the indicated IDR threshold. No pass value. | stated | 2012 QM |

## Peak calling

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Scoring method | Any reasonable method. Methods that account for control signals are "superior". | acceptable | 2011 p8 |
| Threshold | No higher than a 5% false discovery rate. 1% is commonly used. | should | 2011 p8 |
| Setting thresholds | IDR tests, comparison to known targets and validation tests | can | 2011 p8 |
| Peak number | Thousands to tens of thousands for most mammalian TFs at standard thresholds. Hundreds or low thousands indicate failure, depending on the peak finder, except in special cases. | stated | Landt 2012 Peak calling; Fig 4 legend |
| Uniform caller | MACS version 1.4.2 | stated | Landt 2012 footnote 29 |
| Significance values | Not directly comparable between peak callers | stated | Landt 2012 Peak calling |
| Broad regions | Standards "currently in development" | stated | Landt 2012 Peak calling |
| MACS FDR 0.01 | The number of enriched regions MACS calls at an FDR threshold of 0.01 (1%). No pass value. | stated | 2012 QM |

## Enrichment and QC metrics

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Requirement | QC metrics are not currently required to submit data to ENCODE (UCSC). Applying and reporting as many as possible is "recommended, but not required". | not required | 2011 p8, p16 |
| Track inspection | Replicates appear similar, and ChIP peaks are absent from input or IgG controls | should | 2011 p8, p16 |
| True sites | A clear asymmetric forward and reverse strand distribution around the peak midpoint, large compared with the control | expected; should | Landt 2012 Browser inspection |
| Reads in called regions | Typically greater than 2% for factors with large numbers of peaks (>10,000), depending on scoring method and threshold | typically | 2011 p8 |
| Peak enrichment | Values <1% may indicate a poor ChIP, especially for factors with many binding sites. Factors with few sites give low values even when successful. | may indicate | 2011 p16 |
| [FRiP](../../GLOSSARY.md#frip) | Experiments below 1% are scrutinized. 787 of 1052 datasets reached 1% or more with MACS default parameters. Passing does not mean success, and falling below does not mean failure. | scrutinizes | Landt 2012 FRiP |
| FRiP comparisons | Values come from peaks called uniformly by one algorithm and parameter set | should | Landt 2012 FRiP |

### Strand cross-correlation

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| [NSC](../../GLOSSARY.md#nsc) and [RSC](../../GLOSSARY.md#rsc), high quality | NSC > 1.1 and RSC > 1 | typically | 2011 p9 |
| Punctate factors and histone marks (H3k4me1/2/3, H3k27ac, H3k9ac) | NSC and RSC significantly greater than 1 | typically | 2011 p17 |
| Low quality, including input | NSC very close to 1. RSC smaller than 1 and close to 0. | stated | 2011 p17 |
| TFs binding very few sites (< 500) | Can have low NSC and RSC. Consider the factor's biology. | stated | 2011 p17 |
| Broad histone marks (domains > 5kb, e.g., H3k27me3, H3k36me3, H4k20me1) | NSC tends to be < 1.1. RSC tends to be "less close to 1". Significantly deeper sequencing is required. | stated; required | 2011 p17 |
| Cross-correlation peaks | Distinct from those in control experiments | should | 2011 p17 |
| Example profiles | Figure 1 shows profiles labelled Successful, Marginal and Failed, with no numeric cutoffs | stated | 2011 p20 |
| Reporting | Calculate and report NSC and RSC for each experiment | "current ENCODE practice" | Landt 2012 Box 3 |
| Low values | NSC below 1.05 and RSC below 0.8: attempt an additional replicate, or explain in the submission why the data are adequate | recommend | Landt 2012 Box 3 |
| Low values | Replicates with NSC <1.05 and RSC <0.8 are repeated. A note is added if new replicates are also low. | stated ("We repeat") | Landt 2012 Cross-correlation |
| Plotted thresholds | NSC > 1.05, RSC > 0.8, NRF > 0.8, N1/N2 ≥ 2, Np/Nt ≥ 2 | "Current ENCODE thresholds" | Landt 2012 Fig 7 legend |
| Broad-source and few-site factors | Broad-source data give flatter profiles even at high quality. Factors with few sites tend to give relatively low NSC. | expected; stated | Landt 2012 Cross-correlation |
| NSC | Values less than 1.1 are "relatively low". The minimum is 1. | stated | 2012 QM |
| RSC | The minimum is 0. Highly enriched experiments exceed 1. Values much less than 1 may indicate low quality. | stated | 2012 QM |
| Benchmark | The most successful point-source experiments reach FRiP 0.2-0.5 (REST, GABP, CTCF) and NSC/RSC 5-12. Not a threshold. | stated | Landt 2012 Discussion |

### 2012 integrative-analysis flags

| Flag | Meaning | Source |
|---|---|---|
| Under seq | Manually annotated as likely undersequenced | 2012 QM |
| Diff rep | A replicate unlike the others by self-consistency, NSC or RSC. It "should not be used" for replicate comparisons such as IDR. | 2012 QM |
| Manual low S/N | Manually annotated low signal to noise | 2012 QM |
| [Auto low S/N](../../GLOSSARY.md#auto-low-sn) | NSC < 1.09 and RSC < 0.9 | 2012 QM |
| Revoke flag | Revoked by the production lab (R), or a duplicate good dataset (D) | 2012 QM |

## Validation

These rules cover ChIP-seq and ChIP-chip together. Array-specific rules are in [ChIP-chip](../chip-chip.md).

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Per-experiment validation | Early standards called for an alternate detection platform. "the decision to validate each experiment has been reconsidered" because of cost and effort. | stated | 2010 p5 |
| Platforms | qPCR, high-throughput sequencing or ChIP-chip. Validation is "highly recommended" for investigators lacking ChIP experience. | may | 2010 p5 |
| qPCR primers | Quality tested by gel electrophoresis of the PCR products | should | 2010 p5 |
| qPCR targets | 48 targets across a range of signal, 6 of them negatives | should | 2010 p5 |
| qPCR replication | Triplicate, on one biological replicate for unamplified samples and two for amplified samples. qPCR samples may come from other biological replicates than the ChIP data. | should; can | 2010 p6 |
| qPCR duplicates | Allowed. Samples with discrepancies of greater than 15% must get a third test. | must | 2010 p6 |
| qPCR significance | t-test at a 0.05 P-value. This "will normally provide a signal threshold of 2-4 fold". | should | 2010 p6 |
| Unamplified samples | Testing them is "always preferred" | preferred | 2010 p6 |
| Microarray to validate sequencing | Tiling microarrays representing at least 1% of the genome. Data match the sequencing data to the within-platform reproducibility standard. | "are to be"; should | 2010 p6 |
| Sensitivity and specificity | Reported at 3 values (25%, 10% and 5%) from the validated data set or a justifiable parameter. More than 48 samples may be needed. | should | 2010 p6 |
| Validation classes | Validation by each class of method is "recommend but not required" | recommend | 2011 p10 |
| Known targets | Validation starts with comparison to known targets found by other means | stated | 2011 p10 |
| Orthogonal methods | Knockdown or knockout with an expression readout, reporter assays, one-hybrid, DamID and in vitro binding. Only a positive result is interpretable. | stated | 2011 p10 |
| ChIP-chip validation of ChIP-seq | Arrays representing 1% of the genome or more. Only the top ChIP-seq targets generally validate. | should | 2011 p10 |
| qPCR targets | 24-48 targets from a range of p-values. At least six are negative control regions with no significant enrichment. | recommended; must | 2011 p10 |
| qPCR reference | IP measured against a control IgG IP or reverse-crosslinked input DNA | should | 2011 p10 |
| qPCR replication | Triplicate. Duplicates are acceptable if results lie within 15% of one another. | should; acceptable | 2011 p10 |
| False positives | The false positive rate and accuracy across thresholds can help set the scoring threshold | can | 2011 p10-11 |
| False negatives | Not readily assessed by qPCR. Deduced from known targets if available. | can | 2011 p11 |

## Data that miss the standards

The 2010 and 2011 release rules for failing data (a prominent note and a flagged browser track) are in [data reporting](../../general/data-reporting.md).

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Failing IDR criteria | May still be deposited if at least three experimental replicates were attempted, with a note naming the failing parameters | may | Landt 2012 Box 3 |
| Experiments missing the guidelines | May be reported with a note that the criteria were not met and why | may | Landt 2012 Reporting |

## Changes across versions

2012 combines Landt 2012 and the 2012 QM page. 2017 combines the January 2017 [experimental guidelines](experimental-guidelines.md) with the June 2017 [TF](transcription-factor/encode3.md) and [histone](histone/encode3.md) pages.

| Criterion | 2008 | 2010 | 2011 | 2012 | 2017 |
|---|---|---|---|---|---|
| Depth unit | Mapped reads | Mapped reads | Mostly uniquely mapped reads | Mostly uniquely mapped reads | Usable fragments (pages) |
| Mammalian point-source depth | Fallback: at least 12 million (human). Per replicate not stated. | Fallback from June 1, 2010: at least 10 million per replicate | Minimum 10 million per replicate (p7). Appendix I keeps it as the fallback. | ≥10 million per replicate. 20 million per factor. | TF and narrow histone: 20 million per replicate. Guidelines: no number. |
| Worm and fly point-source depth | Fallback: 3-4 million | Fallback: minimum 4 million per replicate | 2 million uniquely mapped (p7). 2 million mapped per replicate (Appendix I). | ≥2 M per replicate | Not stated |
| Mammalian broad-mark depth | Not stated | Not stated | Not established. 15-20 million reads per replicate in common use. | ≥20 million, provisional | Broad histone: 45 million per replicate. H3K9me3 in tissues and primary cells: 45 million total mapped reads. |
| Fly broad-mark depth | Not stated | Not stated | At least 5-10 million reads (mixed or broad) | ≥5 million reads (Box 2) | Not stated |
| Saturation criteria | ≥ 95% of extrapolated targets, or 99% of ≥2-fold targets with 90% of the data | Same | Same | Not stated | Not stated |
| Read length | Not stated | Not stated | Not stated | Not stated | 50 bp minimum (pages) |
| Controls per biosample | One per cell line, in the same cellular condition | Same | One per cell line, developmental stage and condition | As 2011, plus one per cell type, tissue or embryo collection. One per chromatin prep and sonication batch if cost allows. | As 2011 (guidelines). Matching run type, read length and replicate structure (pages). |
| Control depth | At least the greatest depth of any matching TF ChIP-seq | Same | Similar or greater | At least equal to, preferably greater than, the deepest ChIP library | Not stated |
| Control types | Input DNA | Input DNA | Input or IgG | Input or IgG | Input. Tags: wild-type cells or input of the tagged line. |
| Replicates | At least two biological | At least 2 (should). Two recommended for ChIP-seq. | At least two (must). Biological duplicates recommended. | Two biological. A third if the IDR standard is not met. | At least two (must), biological recommended, limited-material exemption (guidelines). Two or more biological, [EN-TEx](../../GLOSSARY.md#en-tex-exemption) exempt (pages). |
| Concordance test | Reads and list lengths within a factor of two. Top 40% with 90% overlap, or all-reads lists sharing more than 75%. | Same, with 80% overlap | Reads and targets within two fold. 80% of the top 40%, or a pooled list sharing more than 75% with each replicate. IDR as an alternative. | IDR at 1%. Replicate regions at least 50% of pooled-pseudoreplicate regions. N1/N2 < 2. | TF: IDR rescue and self-consistency ratios both less than 2. Histone: none. |
| Library complexity | Not stated | Not stated | At least 80% distinct reads | NRF ≥0.8 at 10 million reads. 2012 QM: PBC tiers. | NRF > 0.9, PBC1 > 0.9, PBC2 > 10 preferred |
| Reads in peaks | Not stated | Not stated | Typically > 2% (>10,000 peaks). <1% may indicate a poor ChIP. | FRiP below 1% scrutinized | No threshold |
| Cross-correlation | Not stated | Not stated | NSC > 1.1 and RSC > 1 typical of high quality | NSC < 1.05 and RSC < 0.8 call for a new replicate or a justification. 2012 QM auto low S/N: NSC < 1.09 and RSC < 0.9. | Not stated |
| QC status | No QC metrics | No QC metrics | QC metrics not required | NSC and RSC reported for each experiment. IDR comparison required. | Release requires routine metadata audits (pages) |

The portal ENCODE2 sections cite Landt 2012 but state other values. They set 10 million usable fragments per replicate for TF and narrow histone targets and 20 million for broad histone targets. They prefer NRF > 0.9, PBC1 > 0.9 and PBC2 > 10. TF experiments pass if both IDR ratios are less than 2. The old TF page adds a 36 bp minimum read length.

The ENCODE4 pages (July 2020) keep the 2017 targets and add acceptable tiers. See [TF ENCODE4](transcription-factor/encode4.md) and [histone ENCODE4](histone/encode4.md).

## Conflicts and gaps

- Depth units change. 2008 and 2010 count mapped reads. 2011 and Landt 2012 mostly count uniquely mapped reads. The pages count usable fragments. 2011 gives the fly and worm figure as 2 million "uniquely mapped" reads (p7) and 2 million "mapped" reads (p16).
- 2011 p7 makes 10 million uniquely mapped reads per replicate a standard. Appendix I (p16) applies it only "If either a) or b) are not satisfied".
- 2011 says "the previous requirement was 3 million reads" (p7). 2008 asks for 12 million mapped reads for human and 2010 for 10 million for mammals. 2008 gives 3-4 million only for worm or fly.
- 2008 does not say whether its 12 million is per replicate. 2010 says per replicate and lowers it to 10 million.
- 2011 Appendix I prints "³ 95%" where 2008 and 2010 print "≥ 95%".
- The top-40% overlap is 90% in 2008 and 80% from 2010 on. 2011 words the top-40% test "should" and the pooled-list test "must".
- 2008 and 2010 compare lists called from a "common number of mapped reads", yet option II scores lists "using all available reads".
- 2010 asks for a "significant correlation coefficient" with no value (p5).
- Landt 2012 Box 3 flags NSC "below 1.05" and RSC "below 0.8". Figure 7 draws pass lines at NSC > 1.05 and RSC > 0.8. Exactly 1.05 or 0.8 is not flagged by Box 3 but fails Figure 7. Box 3 offers a new replicate or a justification, while the main text says such replicates are repeated.
- Landt 2012 writes Np/Nt < 2 and N1/N2 < 2 in Box 3 but Np/Nt ≥ 2 and N1/N2 ≥ 2 in the Figure 7 legend. NRF is ≥0.8 in Box 2 and > 0.8 in Figure 7.
- Landt 2012 calls 20 million mapped reads the point-source minimum, while Box 2 asks for ≥10 million uniquely mapping reads per replicate. The text reconciles them as 20 million per factor. The Box 2 Drosophila broad target (≥5 million reads) omits "uniquely mapped", unlike the main text.
- NSC and RSC cut points differ by source: 2011 "typically" > 1.1 and > 1, Landt 2012 1.05 and 0.8, and 2012 QM auto low S/N 1.09 and 0.9. The 2012 QM page also calls NSC below 1.1 "relatively low".
- 2011 leaves reads in peaks from 1% to 2% unlabeled (> 2% typical, <1% possibly poor). Landt 2012 sets no pass value and only scrutinizes FRiP below 1%.
- 2011 says QC metrics are not required (p8, p16). Landt 2012 makes NSC and RSC reporting standard practice and the IDR comparison a submission requirement.
- qPCR validation changes. 2010 asks for 48 targets with 6 negatives (should). 2011 asks for 24-48 targets (recommended) with at least six negatives (must). 2010 requires a third test when duplicates differ by greater than 15%, while 2011 accepts duplicates within 15%.
- The pages cite Landt 2012 but differ from it. They count usable fragments and add PBC1 and PBC2. They prefer NRF > 0.9, where Landt 2012 targets ≥0.8. Their IDR rule uses rescue and self-consistency ratios, while Landt 2012 states Np/Nt and N1/N2.
- The old TF page words replicates and release as "must" where the other ENCODE2 sections say "should". Its 36 bp read length appears in no other source.
- The ENCODE2 histone sections name narrow-peak and broad-peak experiments but list no marks. The mark table on the same pages belongs to the current standards.
- No source sets a concordance test specific to broad marks. 2011 and Landt 2012 say such metrics are being developed. The histone pages give no concordance rule.
- The 2012 QM PBC tiers share endpoints (0.5, 0.8 and 0.9 each end one tier and start the next). Auto low S/N needs both NSC < 1.09 and RSC < 0.9.

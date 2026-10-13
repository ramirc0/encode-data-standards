# RNA-seq: ENCODE2

[Root](../README.md) / [Transcription](README.md) / ENCODE2

Sources:

| Label | Document | Date | URL |
|---|---|---|---|
| 2009 | ModENCODE RNA-Seq best practices (DRAFT), "adapted from Myers/Wold/Gingeras 2009". 2 pages. The portal lists it as "RNA-seq Best Practices". | 2009 | [PDF](https://www.encodeproject.org/documents/bda3dcd2-867f-46af-9d06-b363102b37fb/@@download/attachment/RNA-seq_best_practices_page_2009.pdf) |
| 2011 | Standards, Guidelines and Best Practices for RNA-Seq: 2010/2011. 7 pages. The footers read "RNA standards v1.0" and "2011 May". The portal lists it as "RNA Standards v1.0". | 2011 May | [PDF](https://www.encodeproject.org/documents/91494746-0ffe-4931-b219-a09802ce1cfa/@@download/attachment/RNA_standards_v1_2011_May.pdf) |

The [previous guidelines page](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md) lists both under RNA-seq. The bulk ([ENCODE4](bulk-rna-seq/encode4.md), [ENCODE3](bulk-rna-seq/encode3.md)) and [small RNA-seq](small-rna-seq/standards.md) standards pages cite the 2011 document as "Best practices for ENCODE2 RNA-seq experiments".

Scope: RNA-seq of cell lines, sub-cellular compartments, tissues, organs and whole organisms (2011). The 2009 draft is a modENCODE page of seven numbered items.

The 2011 standards aim at "reference quality" measurements of major RNA sample types. Other study aims and RNA types "call for appropriate adjustments" (2011 p1).

The 2011 cell-line items (p1) ask for the source and lot number, growth time or passage number, cell density, the culture protocol, contaminant test results if tests were conducted, and confirmation of frozen aliquots. They are generic. See [cell culture](../general/cell-culture.md).

## Sample information

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Source and preparation | The biological source of the RNA and the protocols used to extract and prepare it accompany the data | should | 2011 p1 |
| Tissues, organs, organisms and sub-cellular compartments | Animal strain and genotype. Individual genome sequence source data, where available. | should | 2011 p1-2 |
| Preparation and purity | Tissue or cell type preparation protocols (for example cell sorting markers, embryo staging). Purity estimates from cellular enrichments. | should | 2011 p2 |
| Starting material | Amounts, such as tissue or organ weights or the cell number behind sub-cellular compartments. No minimum. | should | 2011 p2 |
| Enrichment or homogeneity | An estimate, for example nuclear vs. cytosolic enrichment, percent homogeneity of CD8+ cells or the fraction of animals at the stated stage. No threshold. | should | 2011 p2 |
| Targeted RNA type | Size range, poly A+ or A-, 5' capped or uncapped, polysomal, etc. | should | 2011 p2 |
| RNA isolation | The protocols used, plus evidence that the targeted RNA type is enriched (for example length profiles, ribosomal RNA in poly A+ samples, 5' cap evidence) | should | 2011 p2 |
| RNA input | "An appropriately sensitive and precise measurement of RNA input" | critical | 2011 p2 |
| Two input methods | Agreeing measurements by two different methods, such as fluorimetric and UV spectrophotometric. Some applications (single cell RNA-Seq) do not permit this. | advised | 2011 p2 |

## Replicates and concordance

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| [Biological replicates](../GLOSSARY.md#biological-replicate) | "Primary determination" in biological duplicate, unless there is a "compelling reason" that this is "impractical or wasteful" (examples: overlapping timepoints, Solexa & 454 data) | will | 2009 p1 |
| Biological replicates | Two or more, with the same exception (example: overlapping time points with high temporal resolution). A biological replicate is "an independent growth of cells/tissue and subsequent analysis". | should | 2011 p2 |
| [Technical replicates](../GLOSSARY.md#technical-replicate) of the same library | Not required | not required | 2009 p1 |
| Technical replicates of the same library | Not required, except to evaluate abnormally high biological variability. Then separating technical and biological variation is "critical". | not required; critical | 2011 p2 |
| Duplicate correlation | > 0.9 for transcripts/features greater than 1 RPKM. The metric is not named. | must | 2009 p1 |
| Typical correlation | [Pearson](../GLOSSARY.md#pearson-correlation) R² of gene expression (RPKM) between two biological replicates, for RNAs detected in both samples: "between 0.92 to 0.98" | should | 2011 p2 |
| Low correlation | Below 0.9, repeat or explain the experiment | should | 2011 p2 |
| mRNA target | Biological replicates show > 0.9 correlation for transcripts/features greater than 1 RPKM in two or more replicates. The metric is not named. | target | 2011 p5 |
| Reproducibility method | Each RNA type needs "treatments suited to the specific data-type". [IDR](../GLOSSARY.md#idr) "can be applied if determined appropriate". Correlation as a function of prevalence "can be used". | require; can | 2011 p4-5 |
| Method reporting | The implementation and settings of any reproducibility algorithm. IDR serves "as a metric of reproducibility and not as a metric to derive a false discovery rate". | should | 2011 p4 |

## Depth

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Known transcripts | Greater than 1X coverage of known "gold standard" transcripts across a range of abundances. No read count. | stated ("Obtain") | 2009 p1 |
| Cell lines | Coverage includes transcripts present at less than 1 copy per cell | should | 2009 p1 |
| Complex tissues | Rare transcripts in rare cell types need cell-level purification, fractionation, normalization or other methods | will be required | 2009 p1 |
| Comparing the profiles of two polyA+ samples | "only modest depths", for example 30M pair-end reads of length > 30NT, of which 20-25M are mappable to the genome or known transcriptome | may require | 2011 p2 |
| Discovery and strong isoform quantification | "more extensive sequencing" | requires | 2011 p2 |
| Typical mammalian tissue, or sensitive detection | A minimum depth of 100-200 M 2 x 76 bp or longer reads | currently recommended | 2011 p3 |
| DSN-normalized or other prevalence-altered libraries | More than the read amounts (>30M paired end reads) used for simple comparison | need | 2011 p3 |

## Coverage metrics

The 2011 mapped-results items 4e to 4g are "recommended when applicable" (p4).

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Depth-of-coverage estimate, mRNA-seq (4e) | (Total sequence NT in the sequencing reaction / Estimate of the Number of Molecules of mRNA/cell) / (1,500NT/mRNA), from mappable reads (unique and multiple mappers). No target value. | can | 2011 p5 |
| Empiric coverage (4f) | For spike-ins and/or the top ~ 30% of annotated RNA by prevalence. Total sequence mapped divided by the known sequence length of that RNA. | can | 2011 p5 |
| Single-isoform subsets | Coverage assessed on transcripts with single isoforms | recommended | 2011 p5 |
| 3'/5' coverage ratio (4g) | Usable in mRNA-seq, not in many other fractions and protocols. Ideally it approaches 1.0 for mRNA. | can; "would like" | 2011 p5 |
| 3'/5' test set | Loci with unique 3' and 5' exons, and polyadenylated spike-ins added before any oligo dT selection | best applied | 2011 p5-6 |
| High 3'/5' ratio | Suggests degraded RNA input or cDNA synthesis biases. "High" has no value. | stated | 2011 p6 |
| End effects | The ratio is evaluated outside the 5' and 3' 100-200 nucleotides of mRNA | should | 2011 p6 |

## Library and sequencing

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Read length | "maximum length paired-end data", for junctions linking one or more exons | highly desirable | 2009 p1 |
| Strandedness | Overlapping genes distinguished with data from stranded libraries | should | 2009 p1 |
| Strategies | Maximal discovery and annotation may need a mix of RNA-Seq strategies | may | 2009 p1 |
| cDNA preparation | Described in the metadata supplied with the sequencing data | must | 2011 p3 |
| cDNA priming | OligodT or random priming. For random priming, the RNA length at cDNA copying. | should | 2011 p3 |
| cDNA details | All details of making the cDNAs, including bar-codes for multiplex sequencing | should | 2011 p3 |
| Sequencing design | Strand specific or unstranded data, pooling and bar coding, platform, depth (for example number of reads), read length, single or paired-end | should | 2011 p3 |

## Spike-ins

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Spike-in ladder | A ladder of RNA spike-ins to calibrate quantification, sensitivity, coverage and linearity | should | 2009 p1 |
| ERCC | The pools of ERCC mRNAs from NIST, "in future experiments" | should | 2009 p1 |
| Spike-in ladder | The same ladder | highly desirable | 2011 p3 |
| Point of entry | The sample-preparation stage at which spikes were added | should | 2011 p3 |
| Timing | As early in the process as possible. Extra spikes at other steps are optional. | goal; optional | 2011 p3 |
| RNA type | Different controls for each RNA type, for example long vs. short RNAs. Not yet available for all RNA types. | needed | 2011 p3 |
| Documentation | How many spike-ins. Their source (home-made, commercial or NIST). The amount added for each. The spike sequences. The concentration of each in the pool. | should | 2011 p3 |
| Spike-in coverage | Average coverage greater than 1x for spike-in transcripts that are > 1 x 10^-6 in the sample | recommended | 2011 p6 |
| Spike-in analyses | Spike-in reads allow detection of each spike-in, percent of spike-in sequence detected, correlation with the dosed amount, and antisense counts for strand-specific methods. No values. | stated ("possible to determine") | 2011 p6 |
| Mate-pair errors | For paired data, the frequency of pairs split between a spike-in and another spike-in or the genome. Assessed "particularly" in studies of chimeric or trans-spliced transcripts. | should | 2011 p6 |

## Mapping and reporting

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Technical noise | Sequencing and mis-mapping frequencies determined in simulations. A null model for non-transcribed regions is "highly problematic". | should | 2009 p1 |
| Mapper | Producers select the program they judge best | should | 2011 p3 |
| Mapping description | Program and version, parameters, reference genome version, and any transcript model or splice junction collections. The treatment of reads that map equally well to several sites. | needs to | 2011 p3-4 |
| Thresholds | Allowed mismatches and minimal score. Any cap on loci for multi-mapping reads (example: "only loci with <10 reads are reported") and the distribution algorithm. Quality scores used to filter reads and parameters used to trim them. Constraints on split reads. | specify | 2011 p4 |
| Strategy | Genome and/or transcriptome mapping, with the genome version and reference transcriptome. The order of mapping steps, and whether novel annotation from the data is part of the final mapping. | specify | 2011 p4 |
| Mapped results | Items 4a to 4d "are expected". Items 4e to 4g are "recommended when applicable". | should; expected; recommended | 2011 p4 |
| 4a | Total number of uniquely mapped reads ("occurs once in reference genome") | expected | 2011 p4 |
| 4b | For paired-end reads, the number of mapped read pairs and of mapped single reads | expected | 2011 p4 |
| 4c | When appropriate, quantitation of exons, splice sites, CAGE and PET tags, and transcripts. RPKM/FPKM normalization "might be applied". | expected | 2011 p4 |
| Null model | The null model and the derivation of detection thresholds, in enough detail to reproduce | important | 2011 p6 |

Item 4d (reproducibility) is under replicates and concordance.

## Novel elements

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Exon pairs | Exon-pair/genelet annotation reported. Full-length models "produced exclusively by RNA-Seq data are suspect". | should | 2009 p2 |
| Full-length sequence | Pursued whenever feasible, to provide connectivity | should | 2009 p2 |
| Novel transcribed elements | When appropriate, reported (minimally "clusters of reads that are not connected to any annotated transcript") with their estimated abundances | desirable | 2011 p7 |
| Format | Program, version, parameters and, if appropriate, annotation and model set, in standard GFF. Transcripts compatible with reference annotations carry the annotation transcript ID. | should | 2011 p7 |
| Novelty | The claimed level of "novelty" and the compatibility with curated annotations, defined explicitly. Not required for raw read mappings. | should | 2011 p7 |
| Novel isoforms of known genes | Sub-categorized as (a) 5' or 3' extensions, (b) novel splice isoforms and any change to the coding sequence, (c) ORF or non-coding RNA subtype, (d) possible incomplete splicing from nuclear RNA, (e) relation to repeat elements | should | 2011 p7 |
| Non-canonical splice junctions | Flagged explicitly | should | 2011 p7 |
| Antisense novel transcripts | From strand-preserving protocols, filtered for low-level strand-mismapping contamination, measurable from the spike-ins | should | 2011 p7 |
| Replicate support | Present in both replicates, when replicates exist | should | 2011 p7 |

## Changes across versions

| Topic | 2009 | 2011 | [2017 guidelines](experimental-guidelines.md) | Portal pages |
|---|---|---|---|---|
| Replicate correlation | > 0.9 for transcripts/features greater than 1 RPKM, metric not named ("must") | Typical Pearson R² of 0.92 to 0.98. Below 0.9, repeat or explain. mRNA target > 0.9 for transcripts/features greater than 1 RPKM in two or more replicates. | Gene-level [Spearman](../GLOSSARY.md#spearman-correlation) > 0.9 between [isogenic](../GLOSSARY.md#isogenic-replicate) and > 0.8 between [anisogenic](../GLOSSARY.md#anisogenic-replicate) replicates ("should") | The same Spearman cutoffs on all four pages ([ENCODE4 bulk](bulk-rna-seq/encode4.md), [ENCODE3 bulk](bulk-rna-seq/encode3.md), [small RNA-seq](small-rna-seq/standards.md), [RAMPAGE](rampage-cage/standards.md)), with "should" |
| Depth | No read count. Greater than 1X coverage of "gold standard" transcripts. | 30M pair-end reads (20-25M mappable) as the example for comparing two polyA+ samples. A minimum of 100-200 M 2 x 76 bp or longer reads for typical mammalian tissue or sensitive detection. | A minimum of 30 million aligned reads/mate-pairs per long or small RNA-seq library, and 20 million per RAMPAGE library ("must") | 30 million [aligned reads](../GLOSSARY.md#read-depth-units) per replicate for bulk and small RNA-seq, 20 million for RAMPAGE ("should"). Older projects aimed for 20 million (bulk) or 10 million (small RNA-seq, RAMPAGE). |
| Spike-ins | A ladder ("should"). ERCC pools from NIST ("should"). | A ladder ("highly desirable"), with five documentation items. Average coverage greater than 1x for spike-ins > 1 x 10^-6 in the sample. | A ladder ("highly desirable"), documented by FASTA, source and concentration. Spike-in sequences go in the mapping set. | ERCC spike-ins with concentrations in the metadata ("should"), on the bulk pages. Ambion Mix 1 at ~2% of final mapped reads. |
| Mapping | No mapper named. Sequencing and mis-mapping frequencies determined in simulations ("should"). | Producers choose the mapper and report it in full. The total of uniquely mapped reads is expected. | The ENCODE pipeline uses STAR. Outside mapping is welcome. Annotations in the mapping set are preferable. | STAR on all four pages. RSEM gene quantification on the bulk pages. The ENCODE4 bulk page adds kallisto for transcripts. |

## Conflicts and gaps

- 2011 states two correlation criteria. Section III.1 gives a typical Pearson R² of 0.92 to 0.98 for RNAs detected in both samples, with repeat-or-explain below 0.9 (p2). Item 4d sets a > 0.9 target, metric not named, for features above 1 RPKM in two or more replicates (p5).
- In 2011, correlations from 0.9 up to 0.92 are neither typical nor flagged. The 0.9 cutoff does not say whether it applies to R² or r.
- 2009 does not name its correlation metric. The [ENCODE4 bulk page](bulk-rna-seq/encode4.md) wraps the start of its Spearman sentence in a link to the 2011 PDF. That PDF uses Pearson R² and has no isogenic or anisogenic split.
- 2011 gives the simple-comparison depth as "30M pair-end reads" (p2) and later as ">30M paired end reads" (p3). The p2 example opens a parenthesis that never closes.
- "100-200 M 2 x 76 bp or longer reads" gives a range as a minimum. It does not say whether M counts reads or read pairs, or whether the reads are mapped.
- 2011 does not say that its depths count aligned reads. Its 30M example counts reads, of which 20-25M are mappable. The 2017 guidelines and the portal pages count aligned reads. The values do not compare directly.
- The worked coverage example prints "5X 10^3 NT /1.5 X^3 NT/mRNA ~3X sequence coverage" (2011 p5). The divisor lacks the 10 of the formula's 1,500NT/mRNA.
- The spike-in coverage rule "> 1 x 10-6 in the sample" gives no unit of abundance (2011 p6). The PDF prints the exponent as a superscript.
- The 3'/5' ratio has an ideal of 1.0 and no cutoff for "high". Neither document gives an RNA integrity (RIN) value.
- Item 4d is "expected" but leaves the method open. IDR "can be applied if determined appropriate". Correlation as a function of prevalence is the stated alternative.
- Read length: 2009 asks for "maximum length paired-end data". 2011 uses > 30NT in its example and 2 x 76 bp or longer for sensitive detection. The 2017 guidelines set no minimum. The portal pages set 50 base pairs.
- Replicates: 2009 says "biological duplicate". 2011 and the 2017 guidelines say "two or more". All three allow an exception for a "compelling reason". 2011 and 2017 add the high-variability exception to the technical-replicate rule.
- Strandedness: only 2009 ties a rule to stranded data. 2011 asks only that strandedness be reported.
- Dating: 2011 prints "2010/2011" in the title and "2011 May" in the footers. 2009 is marked "(DRAFT)" and has no version.

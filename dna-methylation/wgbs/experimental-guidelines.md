# WGBS: experimental guidelines

[Root](../../README.md) / [DNA methylation](../README.md) / [WGBS](README.md) / Experimental guidelines

Source: [ENCODE Standards and Guidelines for Whole Genome Shotgun Bisulfite Sequencing (WGBS)](https://www.encodeproject.org/documents/108d2515-c053-4b18-bc65-27e8f26d62c5/@@download/attachment/MethylC-SeqStandards_ENCODE3_EM.pdf), July 2015, 4 pages. The printed title is "Standards and Guidelines for Whole Genome Shotgun Bisulfite Sequencing (WGBS)", dated July 2015. The current [experiment guidelines index](../../sources/pages/about__experiment-guidelines.md) lists it. The [ENCODE3](encode3.md) and [ENCODE4](encode4.md) standards pages link to that index.

Scope: WGBS, which the document also calls MethylC-Seq. Samples are cell lines, sub-cellular compartments, tissues, organs and whole organisms. Human and mouse appear only in the replicate correlation rule. The document says it "should be revised annually" (p1).

## Sample information

Section II lists "Information to be supplied with each sample used for a WGBS experiment".

| Item | Rule | ENCODE wording | Page |
|---|---|---|---|
| gDNA source | The biological source of the gDNA and the extraction protocols accompany the data | should | 1 |
| Cell lines | Source and lot number, growth time or passage number, cell density, culture protocol, and confirmation that aliquots of the lines were frozen | should | 1 |
| Cell lines | Results of contaminant tests (for example mycoplasma or wolbacia) and of karyotyping and marker analysis, "if conducted" | should | 1 |
| Sub-cellular compartments, tissues, organs, whole organisms | Purification or isolation protocols. Amounts of starting material (tissue or organ weights, cell number). | should | 1 |
| gDNA isolation | Protocols | to be supplied | 1 |
| Fragmentation and end repair | The protocol, if used, and an experimentally based estimate of the input gDNA fragment size distribution | to be supplied | 1 |
| gDNA quantitation | Methods and measures for the DNA input into library preparation and into bisulfite conversion | should | 1 |
| Spike-in amount | Unmethylated lambda gDNA or an alternative control sequence spiked in before fragmentation, as % w/w | to be supplied | 1 |

## Replicates and depth

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| [Biological replicates](../../GLOSSARY.md#biological-replicate) | Two, "unless there is a compelling reason" that this is impractical or wasteful. The examples are "overlapping time points with high temporal resolution" and primary tissues. | should | 2 |
| Biological replicate definition | "an independent growth of cells/tissue and subsequent analysis" | stated | 2 |
| [Technical replicates](../../GLOSSARY.md#technical-replicate) | Of the same library, not required. They may reduce needless removal of reads with coincident alignment positions. | not required; may | 2 |
| Depth | At least 30X [coverage](../../GLOSSARY.md#read-depth-units) of the genome per biological replicate. 30X equals 15X per strand. | should | 2 |
| Average CpG coverage | "may be a useful measure" of depth. No value is given. | may | 2 |

## Library construction

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Fragmentation method | Described in the metadata supplied with the sequencing results | must | 2 |
| Run type | Single-end or paired-end | suitable | 2 |
| Average input fragment length | Provided | informative | 2 |
| Spike-in | Unmethylated cl857 Sam7 Lambda DNA (Promega Cat# D1521), spiked into the sample gDNA before fragmentation | must | 2 |
| Spike-in level | Typically 0.1 - 0.5% (w/w). The quantity is recorded. | typical; should | 2 |
| Methylated adapters | Source (custom-made or third party), sequence and any other modifications | stated | 2 |
| Bisulfite conversion | Method, reagent or kit suppliers and procedure recorded | should | 2 |
| Run details | Pooling and barcoding. Estimated depth, for example reads passing quality filtering before alignment. Read lengths. Single or paired end. The control lane sample for matrix and phasing estimation, for example phiX174 on Illumina. | should | 2 |

## Mapping and filtering

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Pre-mapping steps | Detailed, for example quality trimming and adapter removal | must | 3 |
| Mapping strategy | Strategy and mapping criteria detailed when multiple mapping algorithms are used | requires | 3 |
| Mapping settings | Allowed mismatches, minimal score and maximum summed quality at mismatches. Whether reads may map only uniquely. Constraints on pair locations. | stated | 3 |
| Clonal reads | Removed after mapping: single-end reads sharing the same 5' alignment position, or paired-end reads sharing both 5' positions | should | 3 |
| Other post-mapping filters | Detailed, for example removal of inappropriately mapped reads from C-free alignments, or trimming of low quality mismatched bases at both ends | should | 3 |
| Overlapping read pairs | Pairs with partial overlap are trimmed from the 3' end, so repeated passes over one fragment do not count as independent data points | should | 3 |
| Read statistics | Percent of raw reads mapped uniquely. Mapped reads and genome coverage. Percent of genome and genomic cytosines covered. Cytosine coverage. No thresholds. | stated | 3 |

## Bisulfite conversion QC

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| M-bias plot | Fraction of C basecalls among all C and T basecalls at each read position, for single-end mapped reads | should | 3 |
| M-bias, paired-end | Computed separately on R1 and R2 | should | 3 |
| Spike-in coverage | Percent of bases covered and average depth of the lambda or alternative spike-in | necessary | 4 |
| Spike-in conversion | Percent conversion at C, CG and CH sites in the lambda genome. No threshold. | necessary | 4 |
| Genomic conversion | Percent conversion at CpC sites in the genomic DNA. No threshold. | necessary | 4 |
| Promoter CpG islands | A core set serves as conversion control regions for the mCpA rate. "n=30 should be sufficient". No threshold. | necessary | 4 |

## Replicate concordance

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| CpG methylation | [Pearson correlation](../../GLOSSARY.md#pearson-correlation) between biological replicates, on chromosome 9 for human and all autosomes for mouse. No cutoff. | should | 4 |
| CpG filter | Only CpG sites covered by at least 10 reads in both replicates | should | 4 |

## Conflicts and gaps

- Items II.6 and V.6 allow lambda "or alternative" spike-in controls. Item IV.2 requires one product with "must": cl857 Sam7 Lambda DNA (Promega Cat# D1521).
- The document sets no pass or fail value for any QC metric. It asks only for reports.
- The 30X rule does not say whether coverage is counted before or after clonal-read removal and mapping filters.
- The replicate rule asks for "two biological replicates". It does not say "at least two". Its exceptions name primary tissues as a whole class.
- The correlation covers "all" CpG sites, then narrows human to chromosome 9. No reason is given for the species difference.
- The spike-in range of 0.1 - 0.5% (w/w) is "typical". No limit is set.
- The document asks for annual revision. The guidelines index still lists the July 2015 version.

Against the [ENCODE4 page](encode4.md) ([snapshot](../../sources/pages/data-standards__wgbs-encode4.md)). The [ENCODE3 page](encode3.md) has the same values.

- Coverage. The PDF asks for "at least 30X coverage of the genome for each biological replicates". The page says "Each replicate should have 30X coverage".
- Conversion. The PDF reports conversion at lambda C, CG and CH sites and at genomic CpC sites, with no cutoff. The page says "The C to T conversion rate should be ≥98%".
- Concordance. The PDF computes Pearson on CpG sites with at least 10 reads in both replicates, on chromosome 9 only for human. It sets no cutoff. The page asks for ≥0.8 "for sites with ≥10X coverage".
- Read length. The PDF sets no minimum and asks only that read lengths be reported. The page says "The read length should be a minimum of 100 base pairs".
- Replicates. The PDF asks for two biological replicates and does not require technical replicates. The page asks for "two or more" and says "they may have two technical replicates per biological replicate". The page exempts EN-TEx samples. The PDF's example exceptions are overlapping time points and primary tissues.
- Spike-in. The PDF requires a lambda spike-in. The page's pipeline "maps against the lambda genome as a method of control".
- Assembly. The PDF names none. The page maps to GRCh38 or mm10.
- The [portal audits](portal-audits.md) add coverage tiers below 30X.

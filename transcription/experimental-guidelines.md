# RNA-seq: experimental guidelines

[Root](../README.md) / [Transcription](README.md) / Experimental guidelines

Source: [ENCODE Experimental Guidelines for ENCODE3 RNA-seq (Includes long and small RNA-seq, CAGE, RAMPAGE) (January 2017)](https://www.encodeproject.org/documents/cede0cbe-d324-4ce7-ace4-f0c3eddf5972/@@download/attachment/ENCODE%20Best%20Practices%20for%20RNA_v2.pdf), 5 pages. The printed title is "ENCODE Guidelines and Best Practices for RNA-Seq", "Revised December 2016". No version number is printed. The file name ends in "_v2". Page 5 is blank. The [experiment guidelines page](../sources/pages/about__experiment-guidelines.md) lists it as current.

Scope: RNA-seq metadata, replication, spike-ins and mapping. Depth minimums cover long RNA-seq, small RNA-seq and RAMPAGE.

The standards aim at "reference quality" measurements of major RNA sample types. Other study aims and RNA types "call for appropriate adjustments" (p1).

## Replicates

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| [Biological replicates](../GLOSSARY.md#biological-replicate) | Two or more, unless there is a "compelling reason" why this is "impractical or wasteful" (example: overlapping time points with high temporal resolution) | should | 3 |
| Biological replicate definition | "an independent growth of cells/tissue and subsequent analysis" | stated | 3 |
| [Technical replicates](../GLOSSARY.md#technical-replicate) from the same library | Not required, except to evaluate abnormally high biological variability. Then separating technical and biological variation is "critical". | not required; critical | 3 |
| Concordance, [isogenic](../GLOSSARY.md#isogenic-replicate) replicates | Gene-level [Spearman](../GLOSSARY.md#spearman-correlation) correlation > 0.9 | should | 3 |
| Concordance, [anisogenic](../GLOSSARY.md#anisogenic-replicate) replicates | Gene-level Spearman correlation > 0.8 | should | 3 |

The ENCODE pipeline quantifies annotated genes and transcripts with RSEM and makes the values available for correlation analysis (p3).

## Read depth

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Long RNA-seq | Minimum of 30 million [aligned reads](../GLOSSARY.md#read-depth-units)/mate-pairs per library | must | 3 |
| Small RNA-seq | Minimum of 30 million aligned reads/mate-pairs per library | must | 3 |
| RAMPAGE | Minimum of 20 million aligned reads/mate-pairs per library | must | 3 |
| Comparing the profiles of two polyA+ samples | "only modest depths". No number. | may require | 3 |
| Discovery of novel elements, strong isoform quantification | "more extensive sequencing". No number. | requires | 3 |

## Spike-ins

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Spike-in ladder | A ladder of RNA spike-ins to calibrate quantification, sensitivity, coverage and linearity. No spike-in set or amount is named. | highly desirable | 3 |
| Point of entry | The sample-preparation stage at which spikes were added, because it "affects use of spike data in the output" | should | 3 |
| Timing | As early in the process as possible. Extra spikes at other steps are optional (examples: before poly A+ selection, at cDNA synthesis, just before sequencing). | goal; optional | 3 |
| RNA type | Different spike-in controls for each RNA type, for example long vs. short RNAs. Such standards "are not yet available for all RNA types". | needed | 3 |
| Documentation | A FASTA (or other standard format) file of the spike-in sequences. The source (home-made, Ambion, etc.). The concentration of each spike-in in the pool. | should | 3 |
| Mapping set | The sequences of any exogenous spike-ins added, to obtain mapped spike-in reads | should | 4 |

## Donor and sample metadata

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Human donors | De-identified | should | 1 |
| Donor properties | When available: sex, age, ethnicity, and familial (parent, child, twin) relationships to other profiled donors | should | 1 |
| External donor links | When available, allowable (not protected) links to other donor data, for example 1,000 Genomes or PGP donors | should | 1 |
| Metadata format | Structured JSON, plus accessory PDF files such as FACs analysis or plasmid maps | can | 1 |
| Material type | Tissue, cell line, primary cell type, etc. | should | 2 |
| Ontology term | Noted. A DCC wrangler helps obtain it. | important | 2 |
| Treatments and genetic modifications | Any done before RNA isolation (TALENs, CRISPR, etc.) | important | 2 |
| Subcellular fraction or derived sample | Noted. A derived sample notes its relationship to the source sample. | should | 2 |
| Starting material | "Some sense of sample abundance". "bulk" vs. 10,000 cell equivalents "can give very different results", and lower input is typically less reproducible. No minimum is set. | useful | 2 |
| Identity and purity | The methods of any phenotyping or characterization that confirmed identity or purity. No method is required. | should | 2 |

Two sample items cover received and cultured cells: the lot #, cat # and supplier, and the culture protocol (p2). Culture standards are in [cell culture](../general/cell-culture.md).

## RNA, library and sequencing metadata

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| RNA type | Total RNA, Poly-A(+) RNA or Poly-A(-) RNA | report | 2 |
| RNA size fraction | The typical cutoff is "+ 200 and – 200", with no unit. Other fractions exist, such as microRNA-sized. | report | 2 |
| rRNA depletion | The kit used, if any (RiboMinus, RiboZero) | please note | 2 |
| Production Documents | One .pdf per ENCODE library, supplied to the DCC and appended to each experiment. It lists the methods of RNA isolation, size selection, rRNA removal, oligo-dT selection and DNAse I treatment. | stated | 2 |
| RNA quality and quantity | For bulk samples, typically checked on a BioAnalyzer at four points: total RNA, after oligo-dT size selection, after rRNA depletion, after library construction. No pass or fail value. | stated ("Points to check") | 2 |
| Library kit | Noted and reported | important | 2 |
| Strandedness | Whether the protocol gives stranded or unstranded data | particularly useful | 2 |
| Platform and format | Platform (Illumina, PacBio, Oxford Nanopore, etc.). Single-end or pair-end. | important | 2 |
| Read length | Reported, for example 101 or 125 bases. No minimum is set. | important | 3 |
| Barcodes and molecular markers | If the delivered FASTQ contains them, their position in the read(s) and their sequence(s) | will need to | 3 |
| Custom sequencing primers | The sequence of any custom primers | please provide | 3 |

## Mapping

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| ENCODE pipeline | A common pipeline with the STAR mapper, deployed on DNANexus and available on [GitHub](https://github.com/ENCODE-DCC/long-rna-seq-pipeline). ENCODE3 data were "predominantly mapped using RNA-STAR". | stated | 3-4 |
| Outside mapping | Producers may map data their own way. They work with the DCC to capture the File, Software (version, parameters) and workflow. | welcome | 4 |
| Annotations | A set of annotations in the mapping set, with the genome reference. It "greatly increases the specificity of mapping to splice junctions". | preferable | 4 |
| Mapping statistics | STAR's log.final.out (mapping rate, # of splice junctions, etc.) "can be used as an initial gauge" across libraries. No threshold. | can | 4 |

## Conflicts and gaps

- CAGE appears in the portal's title for this document. The text never names CAGE and sets no CAGE depth.
- "aligned reads/mate-pairs" does not say whether a paired-end library counts reads or pairs.
- The document does not define isogenic or anisogenic. It sets no expression filter for the genes in the Spearman correlation.
- Section IV is titled "Post-Sequencing QC: Post-sequencing mapping, read statistics, quality scores". It sets no numeric threshold. Its mapping item points to the portal's [long RNA page](bulk-rna-seq/encode3.md).
- The BioAnalyzer checkpoints have no pass or fail values. No RNA integrity (RIN) value appears.
- The replicate exception for a "compelling reason" does not say who decides.
- Depth against the portal pages ([ENCODE4 bulk](bulk-rna-seq/encode4.md), [ENCODE3 bulk](bulk-rna-seq/encode3.md), [small RNA-seq](small-rna-seq/standards.md), [RAMPAGE and CAGE](rampage-cage/standards.md)): the guidelines say each library "must have a minimum of" 30 million (long and small RNA-seq) or 20 million (RAMPAGE) aligned reads/mate-pairs. The pages set the same numbers per replicate, in aligned reads, with "should". They add older-project targets of 20 million (bulk) and 10 million (small RNA-seq, RAMPAGE).
- Replicates: the guidelines allow an exception for a "compelling reason". The bulk and small RNA-seq pages instead exempt EN-TEx samples ([EN-TEx exemption](../GLOSSARY.md#en-tex-exemption)). The RAMPAGE page names no exemption and requires exactly two replicates for [IDR](../GLOSSARY.md#idr).
- Concordance: all four pages repeat Spearman > 0.9 (isogenic) and > 0.8 (anisogenic). The bulk and small RNA-seq pages gloss anisogenic as "replicates from different donors".
- Spike-ins: the guidelines call a ladder "highly desirable" and name no set. The bulk pages say ERCC spike-ins "should be used", with concentrations in the metadata. The consortium is standardizing on Ambion Mix 1 at "~2% of final mapped reads". The pages expect the spike-in sequences in the genome index. The small RNA-seq and RAMPAGE pages only require that spike-ins present in the FASTQ be indicated.
- Read length: the guidelines set no minimum. All four pages set a minimum of 50 base pairs ("should").
- Insert size: the guidelines' "+ 200 and – 200" cutoff has no unit. The pages define bulk RNA-seq by an average library insert size of 200 base pairs ("greater than 200 bases" in the overview) and small RNA-seq by < 200 base pairs. The RAMPAGE pipeline takes RNA > 200 nucleotides.
- RAMPAGE control: the RAMPAGE page asks for a matching RNA-seq control experiment ("must" in the restrictions, "should" in the standards). The guidelines name no control.
- CAGE: the RAMPAGE page runs CAGE through the RAMPAGE pipeline. Its pipeline restrictions name CAGE, but its standards section covers RAMPAGE only. Neither source gives a CAGE depth or concordance threshold.
- Earlier versions: [ENCODE2](encode2.md) tracks replicate correlation, depth, spike-ins and mapping from 2009 to the portal pages.

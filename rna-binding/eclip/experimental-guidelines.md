# eCLIP: experimental guidelines

[Root](../../README.md) / [RNA binding](../README.md) / [eCLIP](README.md) / Experimental guidelines

Source: [ENCODE Experimental Guidelines for ENCODE3 eCLIP (January 2017)](https://www.encodeproject.org/documents/9422b49f-7105-4d90-86f8-1201e008eb58/@@download/attachment/eCLIP_experimental_guidelines_doc_v1.0.pdf), 6 pages. The printed title is "ENCODE Guidelines for eCLIP-seq Experiments", "Version 1.0, December 8, 2016". The [experiment guidelines page](../../sources/pages/about__experiment-guidelines.md) lists it as current. The [eCLIP standards page](standards.md) links to that page.

Scope: eCLIP-seq of RNA-binding proteins (RBPs), with depth set for mammalian cells.

Section I sets cell culture measurements for the common ENCODE cell types and primary cells. See [cell culture](../../general/cell-culture.md).

## Antibody characterization

The portal's current RBP antibody standard is [RNA-binding protein antibodies (November 2016)](../../antibodies/rna-binding-protein.md). Its differences from these rows are under "Conflicts and gaps".

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Scope | A primary and a secondary characterization for each new antibody and for each new lot of a characterized antibody | required | 2 |
| Primary: immunoblot | The one primary method, on protein lysates from whole cell extracts and from immunoprecipitated material | should | 2 |
| Primary band | At least 50% of the signal observed on the blot. Ideally the size expected for the protein. | should; ideally | 2 |
| Deviant bands | A main band more than 20% off the expected size, or multiple bands, is acceptable "under certain circumstances". Examples: published studies with the same lot document the mobility, shRNA knockdown or knockout reduces the band, or mass spectrometry finds the factor in the band. | acceptable | 2-3 |
| IP efficiency | Efficient immunoprecipitation of the protein shown before CLIP | helpful | 3 |
| Secondary: knockdown or knockout | Immunoblots of shRNA knockdown or knockout extracts. The primary signal and additional bands fall to no more than 50% of the original signal. | should | 3 |
| Additional controls | Peptide or protein competition of immunoblot, immunofluorescence and/or CLIP signals. Protein expression across timepoints or conditions that matches RNA expression is "a useful criterion". Additional controls cannot replace the criteria above. | welcomed; cannot replace; useful | 3 |
| Multi-gene families | Antibodies raised to regions unique to one family member. Potential cross-reaction noted when reporting data. | should | 3 |
| New cell type or organism | One validation method for an antibody already characterized in one cell type | required | 3 |
| Several cell types | After validation in at least 3 different cell types, no further validation for additional cell types | stated | 3 |
| Lots | Other groups may use the same lot without further characterization. A different lot "must be characterized as if" it were new. | may; must | 3 |

## Read depth

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Depth per replicate (mammalian cells) | A minimum of 1 million [usable reads](../../GLOSSARY.md#read-depth-units), defined as "uniquely mapped, non-PCR duplicate" | minimum; standard | 3 |
| Low-depth rescue | A dataset below the minimum "can be rescued" if its binding to a small number of regions has already saturated at 1 million usable reads. It can also be rescued if binding to multi-copy regions (rRNA, snRNA, repetitive elements including retrotransposons) lowers the uniquely mapped read number. | can be rescued | 3 |
| Replicate balance | Similar numbers of reads obtained for each replicate | recommended | 3 |
| Mapped-read balance | Numbers of mapped reads within two fold of each other | recommended, but not required | 5 |
| Input depth | Input samples sequenced "to a similar or greater depth" | need to | 3 |

## Size-matched input

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Paired input | A paired size-matched input library as the control for each eCLIP-seq experiment | stated | 4 |
| Size window | Matched to the CLIP size selection, a region spanning ~75 kDa above the bound RBP (RNA fragments of 200-250 nt) | should | 4 |
| Batches | Controls performed per cell batch | should | 4 |
| ENCODE practice | One size-matched input per RBP, taken from one of the two RBP biosamples before immunoprecipitation | stated | 4 |
| Other users | A paired size-matched input for each biosample, if feasible | advised | 4 |

## Peaks

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Peak caller | CLIPper [read clusters](../../GLOSSARY.md#read-cluster), each compared against the size-matched input | current standard | 4 |
| Other callers | Incorporate the paired input | critical | 4 |
| High-stringency peaks | Fold-enrichment ≥ 8 and p-value ≤ 10^-3. They can be relaxed for various analyses, because true positive peaks remain below them. | recommend | 4 |
| Dataset cutoffs | Set by visual inspection of known targets | can | 4 |
| Reported features | Cluster (a CLIPper region enriched above transcript-level background). Position (chromosome, strand, peak start and end). | should | 6 |
| Reported statistics | Signal value, for example log2(fold-enrichment) of RBP IP over size-matched input. P-value, typically as –log10(p-value), from Fisher's Exact test (or a Chi-Square approximation). | should | 6 |

Scoring procedures "are still being actively developed" (p4).

## Replicates and reproducibility

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Biosamples | At least two | must | 5 |
| Region-level concordance | High concordance in the fraction of peaks in introns, 3'UTR, coding sequence and 5'UTR, and in any binding to multicopy or repetitive elements. No value. | should | 4 |
| Peak-level [IDR](../../GLOSSARY.md#idr) | Rescue ratio and self-consistency ratio less than two, to pass quality control automatically. Ranking peaks by fold-enrichment over size-matched input "works well". | should | 4 |
| Repetitive-element binders | Can be accepted as specific exceptions when they fail the IDR ratios | can be accepted | 4 |
| Extremely broad binders | Reproducibility can also be assayed at the region or transcript level (examples: RNA pol II, ribosomal components) | can | 5 |
| Optional QC | Before submission: genome browser inspection, binding-site distribution against the RBP's known roles and localization, and de novo motifs against known motifs | suggested; not required for submission | 5 |

## Submission and metadata

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Image files | Need not be stored | do not need | 5 |
| Raw data | read1 and read2 FASTQ files to both GEO and the DCC, for [biological replicates](../../GLOSSARY.md#biological-replicate) 1 and 2 and the size-matched input | should | 5 |
| Project flag | Flagged as mod/ENCODE data through the genome project ID | should | 5 |
| Processed data | "Usable read" BAM files (uniquely mapped, post-PCR duplicate removal) and bigWig signal tracks for replicates 1 and 2 and the input. Input-normalized peaks for replicates 1 and 2. Metadata with the peak caller version. | should | 5 |
| Basic metadata | Investigator, organism or cell line, and protocol (or a reference to one) | requires | 6 |
| Replicate type | [Technical](../../GLOSSARY.md#technical-replicate) or biological. At least two must be performed. | requires; must | 6 |
| Antibody | Catalog and lot number. For a non-commercial antibody, its precise source and preparation method. | requires | 6 |
| Antibody characterization | A summary of results (for example immunoblot images) and a link to the validation information at the DCC | requires | 6 |
| Peak calling | Algorithm and parameters, including thresholds and reference genome | requires | 6 |
| Quality criteria | The criteria used to validate data quality, including exceptions for the RBP | requires | 6 |
| Failed standards | An explanation for any standard the experiment fails | required | 6 |
| Software updates | Producers update peak-caller information (with versions) on their websites as soon as new or updated software is implemented | expected | 6 |

## Conflicts and gaps

- The table of contents lists two appendices that are not in the PDF. Figure 1 and Table 1 are cited (p2) but absent.
- Read counts use three units: 1 million usable reads per replicate (p3), a similar "number of reads obtained" per replicate (p3) and a "number of mapped reads" within two fold (p5).
- Replicates: p5 requires "at least two biosamples". The p6 metadata asks whether each experiment is "a technical or biological replicate (at least two must be performed)", which could count technical replicates.
- Inputs "should be performed per cell batch" (p4). ENCODE ran one input per RBP from one of the two biosamples (p4).
- The document does not define the IDR rescue and self-consistency ratios. See [IDR](../../GLOSSARY.md#idr).
- Peak cutoffs are linear (fold-enrichment ≥ 8, p-value ≤ 10^-3). The reported fields are log2(fold-enrichment) and –log10(p-value).
- The 50% band rule does not say whether it applies to the whole-cell-extract lane, the IP lane or both. The document calls its antibody thresholds "somewhat arbitrary".
- The submission lists name only "biological replicates 1 and 2".
- Band share against the [RBP antibody standard (November 2016)](../../antibodies/rna-binding-protein.md): "at least 50% of the signal observed on the blot" here, ">50% of all bands on the gel (excluding the antibody bands in the case of an immunoprecipitation)" there. A band at exactly 50% passes only here.
- Band size: here the expected size is met "Ideally", and a deviation of more than 20% is acceptable in the listed cases. The 2016 standard makes a major band "within 20% of the size predicted by the size of the coding region" part of the primary pass. A blot with too many bands or the wrong migration can be rescued by a secondary characterization.
- Knockdown: here signals fall "to no more than 50% of the original signal" after shRNA knockdown or knockout. In 2016, siRNA or shRNA knockdown reduces the bands "by at least 50% of the control signal". The 2016 standard adds a control knockdown, the reagent sequence or catalog number, size markers and a transfection protocol.
- Methods: here one primary method (immunoblot) and one secondary (knockdown or knockout). The 2016 standard adds IP mass spec as Primary Method 2, with rank rules such as "top 25 ranked proteins". Its secondary methods add epitope-tagged expression and mass spectrometry to knockdown.
- Blot controls: the 2016 standard requires size markers and runs a control IgG precipitation on the same gel for IP-westerns. This document names neither.
- New cell types: here one validation method suffices, and none after at least 3 cell types. For the same lot in a new cell type, the 2016 standard needs nothing more when the banding pattern matches and a secondary characterization when it differs. After a pass in 2 different human cell lines and/or tissues, it needs no characterization in each tissue type. It considers exceptions for human tissues.
- New lots: here a new lot is characterized as a new antibody (primary and secondary). The 2016 standard repeats a primary method in a previously used cell type and the new one. A secondary characterization follows only if the patterns differ.
- Exemptions: the 2016 standard lets a review committee exempt antibodies case by case and flags their datasets. This document has no antibody exemption. It asks for an explanation of any failed standard.
- Depth against the [eCLIP standards page](standards.md) (June 2017): 1 million usable reads per replicate here. The page asks for 1 million [unique fragments](../../GLOSSARY.md#read-depth-units) or [saturated peak detection](../../GLOSSARY.md#saturated-peak-detection) in each biological replicate ("should"). The terms page defines usable reads and unique fragments separately.
- Repetitive and multi-copy binders: here they can be rescued at the depth rule and accepted as exceptions to the IDR rule. The page has no such depth or IDR exception. Its exemption for non-typical binding (rRNA, snRNAs, repetitive elements or multicopy sequences, broad binding, specific RNA families) sits under the FRiP rule.
- IDR: both sources use rescue and self-consistency ratios below 2.
- FRiP: the page adds a [FRiP](../../GLOSSARY.md#frip) score over enriched peaks of at least 0.005 for narrow-binding RBPs. This document has no FRiP rule.
- Replicates: "at least two biosamples must be analyzed" here. "two or more biological replicates, isogenic or anisogenic" ("should") on the page.
- Sequencing: the page asks for a size-matched input with matching run type and read length ("should"). Its restrictions require 50 bp reads and paired-end sequencing ("must"). This document sets no read length or run type. Its raw-data rule names read1 and read2 files.
- Peaks: the page sets no peak cutoffs. The terms page defines significant peaks for the saturation test on log scales, log2(fold enrichment) ≥ 3 and –log10(p-value) ≥ 3.
- Antibodies: the page links the TF (May 2016), histone and chromatin-associated protein (October 2016) and RBP (November 2016) standards. This document states its own criteria.

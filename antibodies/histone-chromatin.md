# Histone and chromatin-associated protein antibodies: October 2016

[Root](../README.md) / [Antibodies](README.md) / Histone and chromatin-associated proteins

Source: [ENCODE Antibody Characterization Guidelines for Histone Variants, Histone Modifications and Chromatin-associated Proteins](https://www.encodeproject.org/documents/4bb40778-387a-47c4-ab24-cebe64ead5ae/@@download/attachment/ENCODE_Approved_Oct_2016_Histone_and_Chromatin_associated_Proteins_Antibody_Characterization_Guidelines.pdf), "Approved on October 17, 2016", 5 pages. Pages 1-3 hold the guidelines and notes. Pages 4-5 hold two Broad Institute example validations. The [experiment guidelines page](../sources/pages/about__experiment-guidelines.md) lists it as current, as "Antibody Characterization Standards for histone modifications and chromatin-associated proteins (October 2016)".

Scope: ChIP-seq antibodies to histones (variants and modified forms) and to chromatin-associated proteins. For chromatin-associated proteins it borrows methods from the [TF standard (May 2016)](transcription-factor.md).

Replaces: not stated. The [previous versions page](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md) holds the November 2008 histone standard ([ENCODE2](encode2.md)) and the [August 2015](encode3-2015.md) and [February 2014](encode3-2014.md) standards. The 2014 and 2015 histone sections cover modified histones only.

## Review and outcomes

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Meaning of a pass | An antibody that passes a primary method and, "as appropriate", a supporting secondary method is "believed" to recognize the target and to be active in the cell type(s) tested | stated | 1 |
| Review | A panel of ENCODE investigators and analysts reviews the data during ChIP-seq data finalization. Validated antibodies "are designated as such". | stated | 1 |
| Data access | All characterization data are on the ENCODE portal | stated | 1 |
| Below thresholds, data judged useful | The antibody and its ChIP-seq data are flagged as having "a quality concern". The deficiency is reported. | stated | 1 |
| Data users | Weigh the primary data against their own knowledge and requirements | recommend | 1 |
| Characterized lot | A primary and a secondary characterization are submitted for review and "deemed [compliant](../GLOSSARY.md#antibody-characterization-status) to the current ENCODE standards". The lot is then "considered characterized for use in new binding assays". | stated | 1 |
| Future users of the reagents | Prior lot-specific review, because "significant lot-to-lot differences in performance have been observed" | recommended | 1 |

The document describes no exemption or special-request route.

## Primary characterization

A primary characterization of each lot "is performed" for every target class (p2).

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Modified histone: blot | Immunoblot of nuclear or whole cell extracts from the species in which the antibody will be used for ChIP-seq | should | 2 |
| Modified histone: band share | The specific histone band is at least 50% of the protein signal | should | 2 |
| Modified histone: other bands | At least 10-fold enrichment relative to any other single band | should | 2 |
| Modified histone: unmodified histone | At least 10-fold enriched relative to the unmodified recombinant histone, "(if this is included on the western blot)" | should | 2 |
| Modified histone: recombinant histone | A recombinant unmodified histone on the western blot | preferable | 2 |
| Modified histone: recombinant waiver | Not needed if the secondary peptide tests include unmodified relevant peptides | not required | 2 |
| Modified histone: labels | Each immunoblot labels the cells and includes size markers | should | 2 |
| Histone variant | A western blot under the modified-histone criteria "constitutes primary validation" | stated | 2 |
| Chromatin-associated protein | The TF primary methods (western or IP-Western), per the [TF standard](transcription-factor.md) | should | 2 |

## Secondary characterization

### Method 1: peptide tests (modified histones)

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Methods | "dot blots, peptide arrays or peptide competitions" | can | 2 |
| Commercial arrays | Acceptable. Vendor and catalog number provided. | acceptable; should | 2 |
| Small arrays | Contain the most relevant peptides for the antibody | critical | 2 |
| Peptide competition | Uses the most relevant peptides in the competition series | important | 2 |
| Specificity | "A 10-fold enriched binding signal for the modification of interest relative to other modifications" | ideal | 2 |
| Peptide map | An annotated map of the peptides on the blot or array | should | 2 |

### Method 2: ChIP-seq similarity (all target classes)

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Comparator | ChIP-seq from a different antibody to the same modified histone, histone variant or chromatin-associated protein | can | 2 |
| Other comparators (chromatin-associated proteins) | ChIP-seq of another factor in the same complex, or of a histone modification that the factor catalyzes or physically interacts with | can | 2 |
| Literature | PMIDs of the publications that support the interactions or activities | should | 2 |
| Pass | "Correspondence between the datasets". The metrics are in the Notes. | stated | 2 |
| Accessions | The comparison lot, the ChIP-seq data and the evidence for correspondence are specified with ENCODE antibody and experiment accessions | stated | 2-3 |
| Comparator status | The comparator antibody "need not have already been deemed characterized" to the standards current at its review | need not | 3 |
| Mutual validation | A high correlation between antibodies to different proteins of one multi-protein complex validates both antibodies | stated | 3 |

### Methods 3 and 4

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Method 3 (histone variants) | A western blot shows that the antibody is specific to the variant and does not recognize recombinant canonical histone | can | 3 |
| Method 4 (chromatin-associated proteins) | The TF secondary methods, printed as "(western or IP-western)" | can | 3 |

## ChIP-seq comparison metrics (Notes)

Note 1 covers [IDR](../GLOSSARY.md#idr). It says "the only approved IDR standards for ChIP-seq datasets are for narrow-peak datasets". The rescue ratio is `RR_new = | Np U Nt | / | Np ^ Nt |`. The self consistency ratio is `SR_new = | N1 U N2 | / | N1 ^ N2 |`. The document defines `^` as the intersection and `U` as the union of 2 peak sets.

| Ratios | Outcome | Quality score | Page |
|---|---|---|---|
| RR_new > 2 AND SR_new > 2 | Low reproducibility (failed) | -1 | 3 |
| RR_new > 2 OR SR_new > 2, but not both | Moderate reproducibility (passed) | 0 | 3 |
| RR_new <= 2 AND SR_new <= 2 | High reproducibility (passed) | +1 | 3 |

Note 2 adds a [Pearson correlation](../GLOSSARY.md#pearson-correlation) test from the Bernstein lab at the Broad Institute (ENCODE3).

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Use | Comparing ChIP-seq datasets "for broad marks of chromatin-associated proteins" | stated | 3 |
| Windows | ~15,000 3KB genomic windows whose signal varies between histone marks and cell types. They are based on ~1000 manually curated ChIP-seq experiments (ENCODE2 and NIH Roadmap Epigenomics). A linked spreadsheet gives the coordinates. | stated | 3 |
| Excluded windows | ~1000 windows with false-positive constitutive signals | stated | 3 |
| Statistic | Pearson correlation of normalized read density across the 15,000 windows | stated | 3 |
| Cut-off | Genome-wide correlation between documented members of multi-protein complexes "higher than 0.8" | should | 3 |
| Complex evidence | References documenting that the proteins share a complex | must | 3 |
| Below the cut-off | Significant correlations that do not meet the cut-off are flagged in the secondary validation documentation | stated | 3 |

## Worked examples

The two Broad Institute pages (pp4-5) set no new standard. Both say the high correlation validates "both antibodies".

| Example | Antibody validated | Comparator | Overall correlation score | Page |
|---|---|---|---|---|
| a. Two antibodies to one protein (SUZ12) | Millipore 05-1317, mouse monoclonal, raised against full length SUZ12 | Active Motif 39357, rabbit polyclonal against a C-terminal peptide ([ENCAB823XVS](https://www.encodeproject.org/antibodies/ENCAB823XVS/)) | 0.9956 | 4 |
| b. Two members of one complex (EZH2 and SUZ12, PRC2) | Active Motif 39639, rabbit polyclonal against EZH2 | The same SUZ12 antibody (ENCAB823XVS) | 0.9833 | 5 |

The browser screenshots on both pages are labeled hg19 (visual).

## Lot and cell-type rules

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Lots | Each lot of each antibody is characterized independently and reviewed before use | stated | 1 |
| Same lot, modified histone or histone variant | After passing primary and secondary, eligible for use in all cell types of the same species | stated | 2 |
| Same lot, chromatin-associated protein | Immunoblot or IP validates specificity in each new cell type | stated | 2 |
| New lot, same catalog number, any target class | Both a primary and a secondary characterization "must still be performed" | must | 2 |

## Conflicts and gaps

Within the document:

- The primary rule names "a chromatin modifier" (p2). Elsewhere the document says "chromatin-associated protein".
- Secondary method 4 calls the TF secondary methods "(western or IP-western)" (p3). In the [TF standard](transcription-factor.md), western and IP-Western are primary methods. Its secondary methods are knockdown, ChIP-seq comparison, tagged-protein blots and motif analysis.
- Only narrow-peak IDR standards are approved (Note 1). The Pearson cut-off covers only chromatin-associated proteins (Note 2). Modified histones and histone variants get no numeric ChIP-seq similarity cut-off, although secondary method 2 allows the comparison for them.
- The 0.8 cut-off covers "documented members of multi-protein complexes". It does not say whether it covers two antibodies to one protein, the case in example a.
- The window set is "~15,000" in one sentence and "15,000" in the next. The text does not say whether the ~1000 excluded windows fall inside that count.
- Correlations "that are significant" but below the cut-off are flagged. No significance test or level is given.
- "Correspondence between the datasets" is the pass criterion of secondary method 2 (p2). Only the Notes give metrics.
- The comparator antibody "need not" be characterized, and a high correlation validates "both antibodies" (p3). The text sets no limit on two uncharacterized antibodies validating each other.
- The document has no exemption or special-request route. The [2015](encode3-2015.md) histone section had one (Note 3), with flagged "exempt" antibodies.

Against other portal pages:

- Note 1 counts a ratio of exactly 2 as passing (<= 2). The portal tiers in the [glossary](../GLOSSARY.md#idr) place exactly 2 in no row.
- All-cell-type eligibility covers modified histones and histone variants (p2). The [antibody characterization process page](../sources/pages/help__antibody_characterization_process.md) exempts only antibodies "against a histone modification" from per-cell-type characterization.

Against other versions:

- Peptide specificity of 10-fold: [2008](encode2.md#histone-modification-antibodies) says it "would contribute to confidence". [2014](encode3-2014.md) and [2015](encode3-2015.md) say it "is required". Here it "is ideal".
- Blot extracts: 2008 uses nuclear extracts "from each species to be studied". 2014 asks for "at least 3 cell lines/types", including the species. 2015 and this document ask for extracts "from the species in which the antibody will be used".
- Recombinant unmodified histone: 2014 says the blot "should include" it. 2015 and this document call it "preferable" and waive it when unmodified peptides are in the secondary test. The 10-fold rule against it gains "(if this is included on the western blot)".
- The 50% signal share and both 10-fold blot ratios have held since 2008. 2008 says "nuclear protein signal" and "unmodified histone".
- ChIP-seq similarity: in 2014 a quantitative measure "has not yet been decided". 2015 allows it with IDR but approves only narrow-peak IDR. It promises broad-peak standards. Here it covers all target classes and adds the Pearson cut-off for chromatin-associated proteins. No broad-peak IDR standard appears.
- Scope: 2015 grouped chromatin remodelers and modifiers with TFs. Histone variants and chromatin-associated proteins are new here.
- New lots: 2008 says they "must be analyzed independently". 2014 has no separate histone new-lot item. 2015 and this document require both a primary and a secondary.
- The 2008 mass spec test (target at least 80% of the IP'd histone signal) and both mutant tests (below 10% of wild-type signal, and at least a 10-fold reduction) appear in none of the 2014 to 2016 documents.
- Release gate: 2015 requires approval by the "antibody characterization review committee of the ENCODE DCC" before histone ChIP-seq data "can be released". Here a panel reviews data during "data finalization", and useful data below thresholds get a "quality concern" flag.

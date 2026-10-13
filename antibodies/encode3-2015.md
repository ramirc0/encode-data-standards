# Antibody characterization: ENCODE3, August 2015

[Root](../README.md) / [Antibodies](README.md) / ENCODE3 (August 2015)

Source: [Antibody Characterization Standards](https://www.encodeproject.org/documents/e7c46221-861b-4687-ab2c-6c5269223c5c/@@download/attachment/Antibody_Characterization_ENCODE3_August2015.pdf), page header "August, 2015", 11 pages. Pages 1-7 are text. Pages 8-11 are undated flowchart slides, which the text cites as slides 1 to 4. The document names no organism and states no predecessor. The portal lists it with [February 2014](encode3-2014.md) under previous versions ([snapshot](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md)). The current guidelines page lists the 2016 [TF](transcription-factor.md), [histone and chromatin-associated protein](histone-chromatin.md), [RBP](rna-binding-protein.md) and [fRIP](frip.md) standards instead ([snapshot](../sources/pages/about__experiment-guidelines.md)).

Scope: antibodies to transcriptional regulators and modified histones used for ChIP-seq, and antibodies to RNA-binding proteins (RBPs) used for "binding data". The regulator and RBP methods cover only antibodies to endogenously expressed proteins.

## Transcriptional regulators

The section heading reads "including TFs, chromatin remodelers, and chromatin modifiers". Its first sentence also names "RNA-binding proteins" (p1).

### Approval and primary characterization

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Release | The antibody characterization review committee of the ENCODE DCC approves the lot "for use in that cell type" before ChIP-seq data can be released | must | 1 |
| Characterizations | A primary and a secondary characterization, both submitted for review and deemed [compliant](../GLOSSARY.md#antibody-characterization-status). The lot is then "considered validated and eligible for use in new binding assays". | must | 1 |
| Primary method | Immunoblot (Western blot) or immunoprecipitation (IP-Western), for each lot number and each cell type | must | 1 |
| Band size | Major band within 20% of the size predicted by the coding region of the protein | stated (pass condition) | 1 |
| Band share | Major band >50% of all bands on the gel, excluding antibody bands in an IP. Meeting both band rules passes the primary. | stated (pass condition) | 1 |
| Blot labels | Cell types tested and size markers on each immunoblot | should | 1 |
| IP control | A control IgG precipitation | should | 1 |

### Failed primary

| Failure | Route | ENCODE wording | Page |
|---|---|---|---|
| Band rules not met, for example from splice variants or modifications that alter mobility | Rescue by a secondary characterization showing that the band(s) are the correct protein, for example all bands reduced by siRNA | can | 1 |
| No signal, or only signals at the wrong size | Rescue by Mass Spec "as the sole characterization method". The failed Western blot goes in the characterization document. | can; must | 1 |
| Antibody does not recognize denatured protein, and other methods are used | Submit the characterization document as a special request (Note 3) | should | 1 |

### Lots and cell types

| Case | Rule | ENCODE wording | Page |
|---|---|---|---|
| Same lot, new cell type, same banding pattern | No further characterization, if the lot passed primary and secondary in another cell type | stated | 1 |
| Same lot, new cell type, different pattern | Secondary characterization in the new cell type | must | 1 |
| New lot of a characterized antibody | Primary characterization in at least one cell type used for the previous lot, and in the cell type for the new ChIP-seq data. Name the comparison lot by its ENCODE antibody accession. | must; indicate | 1 |
| New lot, same patterns in both cell types | No further characterization | stated | 1-2 |
| New lot, different patterns | Secondary characterization | must | 2 |

### Secondary methods

| Method | Criterion | ENCODE wording | Page |
|---|---|---|---|
| 1. siRNA or shRNA against the target mRNA | Band(s) reduced "to no more than 50% of the original signal" | should | 2 |
| 1. siRNA or shRNA | Give the oligonucleotide sequence, or vendor and catalog number. Run a control knockdown. Label cell types and include size markers. Describe the transfection protocol briefly. | should | 2 |
| 2. ChIP-seq from a characterized antibody | Comparator: another lot of a characterized antibody, a different characterized antibody to the same regulator, or an epitope-tagged target with an anti-tag antibody | can | 2 |
| 2. ChIP-seq from a characterized antibody | Compare new and previous data. Passing the narrow-peak [IDR](../GLOSSARY.md#idr) cut-offs (below) makes the secondary compliant. | should; stated | 2 |
| 2. ChIP-seq from a characterized antibody | Name the lot and the ChIP-seq data by ENCODE antibody and experiment accessions | indicate | 2 |
| 3. Overexpressed tagged protein | For proteins resistant to siRNA knockdown, for example very stable proteins. The primary must first show appropriate specificity. | can; must | 2 |
| 3. Overexpressed tagged protein | Two side-by-side immunoblots of control and overexpressing cells, one with the anti-tag antibody and one with the antibody to the endogenous factor. The endogenous band in control cells matches the exogenous protein in size. | should | 2 |
| 4. Mass spectrometry | Reporting items and pass criteria in the next table | stated | 2-3 |

### Mass spectrometry

The document heads the lists "What should be reported" and "What should be required to pass validation".

| Item | Requirement | ENCODE wording | Page |
|---|---|---|---|
| Report | IP-western blot of the gel image, with the gel slices outlined | should | 2 |
| Report | All peptides, with peptide counts, from all immunoreactive bands | should | 2 |
| Report | Fold enrichment of all peptides against a mock IP, or against proteins immunoprecipitated from the same cell type by other antibodies from the same host species | should | 2 |
| Report | The list of proteins used as the IP contaminant set | must | 2 |
| Report | Which proteins ranked above the target are TFs, and which of those share the target's TF family | should | 2 |
| Pass | Target enriched against the mock IP or the contaminant set | should | 3 |
| Pass | Target in the top 20 ranked proteins and the top most enriched TF in the immunoreactive band, unless the higher ranked TFs are known interacting partners | should | 3 |
| Pass | Target is the top ranked member of its TF family. A publication showing that a higher ranked member dimerizes with the target allows an exception. | should; "exceptions will be allowed" | 3 |
| Fail | Submit as a special request (Note 3) | can | 3 |

### IDR cut-offs

Note 2 (p3) gives the "Current IDR standards for a narrow-peak ChIP-seq dataset". The rescue ratio is `RR_new = | Np U Nt | / | Np ^ Nt |`. The self consistency ratio is `SR_new = | N1 U N2 | / | N1 ^ N2 |`. The document defines ^ as the intersection and U as the union of 2 peak sets.

| Ratios | Outcome | Quality score | Page |
|---|---|---|---|
| RR_new > 2 AND SR_new > 2 | Low reproducibility (failed) | -1 | 3 |
| RR_new > 2 OR SR_new > 2, but not both | Moderate reproducibility (passed) | 0 | 3 |
| RR_new <= 2 AND SR_new <= 2 | High reproducibility (passed) | +1 | 3 |

## RNA-binding proteins

The RBP section (pp4-6) repeats the regulator text for approval, primary characterization, failed primaries, lot rules, siRNA, overexpressed tagged proteins and the other mass spec items. The rows below are its differences.

| Criterion | RBP rule | ENCODE wording | Page |
|---|---|---|---|
| Release | The same committee approves the lot "for use in that cell type" before binding data can be released | must | 4 |
| Secondary methods | 1) siRNA or shRNA, 2) overexpressed tagged proteins, 3) mass spectrometry. ChIP-seq comparison is absent. | stated | 5 |
| Mass spec gel | Outline gel slices "if individual slices are analyzed" | should | 5 |
| Mass spec report | Which proteins above the target are RBPs, and which RBPs share its family | should | 5 |
| Mass spec pass | Top 20 ranked proteins and the top most enriched RBP, unless the higher ranked RBPs are known interacting partners. Top ranked member of its RBP family, with the same dimerization exception. | should | 5 |
| Notes | Note 1 limits the methods to endogenous proteins. Note 2 holds the exception process. There is no IDR note. | stated | 6 |

## Modified histones

### Approval and primary characterization

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Release | The antibody characterization review committee of the ENCODE DCC approves the lot before ChIP-seq data can be released. The rule has no cell-type clause. | must | 6 |
| Characterizations | Primary and secondary, both deemed compliant. The lot is then "eligible for use in new binding assays". | must | 6 |
| Primary per lot | A primary characterization of each lot number | must | 6 |
| Extracts | Immunoblot of nuclear or whole cell extracts from the species in which the antibody will be used for ChIP-seq | should | 6 |
| Band share | Specific histone band at least 50% of the protein signal | should | 6 |
| Band ratio | At least 10-fold enrichment relative to any other single band | should | 6 |
| Recombinant ratio | At least 10-fold over the unmodified recombinant histone, "if this is included on the western blot" | should | 6 |
| Recombinant histone | Including it is "preferable". It is not required if the secondary dot blots, peptide arrays or peptide competitions include unmodified relevant peptides. | preferable; not required | 6 |
| Blot labels | Cells labeled and size markers included | should | 6 |

### Lots and cell types

| Case | Rule | ENCODE wording | Page |
|---|---|---|---|
| Same lot, new cell type | A lot that passed primary and secondary is eligible in all cell types of the same species | stated | 6 |
| New lot, same catalog number | Both a primary and a secondary characterization "must still be performed" | must | 6 |

### Secondary methods

| Method | Criterion | ENCODE wording | Page |
|---|---|---|---|
| 1. Dot blots, peptide arrays or peptide competitions | Commercial arrays are acceptable. Give vendor and catalog number. | acceptable; should | 6 |
| 1. Small arrays | The array holds the most relevant peptides for the antibody | critical | 6 |
| 1. Peptide competition | The competition series uses the most relevant peptides | important | 6 |
| 1. Specificity | "A 10-fold enriched binding signal for the modification of interest relative to other modifications" | required | 6-7 |
| 1. Peptide map | Annotated map of the peptides on the blot or array | should | 7 |
| 2. ChIP-seq similarity | Comparator: a different lot of the same antibody, a different antibody to the same modification, or a component of the complex that deposits the mark | allowable | 7 |
| 2. ChIP-seq similarity | Passing the ENCODE IDR cut-offs makes the secondary compliant. Name the lot and the data by ENCODE antibody and experiment accessions. | stated; indicate | 7 |

### IDR cut-offs

Note 1 (p7) says "the only approved IDR standards for ChIP-seq datasets are for narrow-peak datasets" and repeats the regulator rules above. Note 2 defers broad-peak standards to "future Antibody Characterization standards".

## Exceptions

Each section ends with the same exception note. It is Note 3 on pp3 and 7 and Note 2 on p6.

| Criterion | Rule | ENCODE wording | Page |
|---|---|---|---|
| Special requests | Exceptions "will be considered for special cases". The antibody characterization review committee of the DCC and the Production PIs review them. | will | 3, 6, 7 |
| Flag | Datasets that use these "[exempt](../GLOSSARY.md#antibody-characterization-status)" antibodies are flagged in the ENCODE datasets | will | 3, 6, 7 |

## Flowchart slides

Slides 1 to 4 (pp8-11) restate the rules as flowcharts. The rows below come from the slide images. Each path ends in "ENCODE portal: Eligible for new data" or "Not eligible for new data".

| Slide | Content | ENCODE wording | Page |
|---|---|---|---|
| 1, initial characterization (TFs, chromatin remodelers, chromatin modifiers, RBPs) | A Western blot or IP-Western "must be done for all lot numbers of any antibody using extracts from the same cell type used for the ChIP-seq" | must | 8 |
| 1 | "Major band is within 20% of the right size and >50% signal on gel" leads to secondary characterization ("siRNA, tagging, ChIP-seq*, Mass Spec") | stated | 8 |
| 1 | "Multiple splice variants, heavy modifications" leads to "Confirm with siRNA" | stated | 8 |
| 1 | "wrong size, ladder of bands, no signal" leads to "Confirm with Mass Spec" | stated | 8 |
| 1 | Footnote: ChIP-seq is "not appropriate for RBP" | stated | 8 |
| 2, same lot in a new cell type (same four classes) | A Western blot or IP-Western "must be done using extracts from the new cell type". Same banding pattern: "No further characterization is needed". Different pattern: "Secondary characterization is required". | must | 9 |
| 3, new lot (TFs, chromatin remodelers, chromatin modifiers) | Western blot or IP-Western of the new lot on extracts "from the same cell type used for the ChIP-seq". Same pattern as the approved lot: eligible. "Pattern is different, but within ENCODE standards": secondary characterization. "wrong size, ladder of bands, no signal": not eligible. | stated | 10 |
| 4, modified histone | A Western blot or IP-Western "must be done for all lot numbers of any antibody". Extracts "from the same species it is to be used in should show signals only for the specific histone modification" AND recombinant unmodified histone (if included) "should not be detected". | must; should | 11 |
| 4 | "Peptide arrays or peptide competitions must show appropriate specificity". Pass: "Eligible for new data (in all cells for that species)". "Cross reactivity": not eligible. | must | 11 |
| 4 | Footnote: the recombinant histone is "not required on blot if relevant unmodified peptide is included in the secondary characterization" | stated | 11 |

## Conflicts and gaps

Slides against text:

- No-signal new lots: slide 3 sends "wrong size, ladder of bands, no signal" to "Not eligible for new data". Text item 1c (p1) lets Mass Spec rescue blots with no signal or wrong-size signals.
- Splice-variant failures: slide 1 offers only "Confirm with siRNA". The text allows any secondary characterization and gives siRNA as an example (p1).
- Histone blot: slide 4 asks for signals "only for the specific histone modification". The text sets at least 50% of the protein signal and at least 10-fold over any other band (p6).
- Histone secondary: slide 4 shows only peptide arrays or peptide competitions. The text also allows dot blots and ChIP-seq similarity with IDR (pp6-7).
- Slide 3's title omits RBPs. The RBP text has its own new-lot rule (p4).
- Slide 1 prints "Not eligible new data". Slides 2 to 4 print "Not eligible for new data".

Within the text:

- The RBP section cites "Note 3" twice (pp4-5). Its notes run 1 to 2, and its exception note is Note 2.
- The RBP new-lot rule names the cell type "for which ChIP-seq data will be deposited" (p4). Slide 1 marks ChIP-seq "not appropriate for RBP".
- The regulator section names "RNA-binding proteins" in its first sentence (p1). A separate RBP section follows.
- Histone ChIP-seq similarity must pass "the ENCODE IDR cuts-offs" (p7). Only narrow-peak IDR is approved, and broad-peak standards are deferred. Broad marks have no usable cut-off.
- Mass spec is a secondary method and also "the sole characterization method" for blots with no signal (p1). The text does not say which criteria apply when it stands alone.
- The exception for "known interacting partners" (pp3, 5) has no evidence standard.
- The document defines ^ and U but not Np, Nt, N1 or N2.
- A ratio of exactly 2 passes here (<= 2). The portal tiers in the [glossary](../GLOSSARY.md#idr) place exactly 2 in no row.

Against other versions (full timeline in [ENCODE2 changes](encode2.md#changes-across-versions)):

- Mass spec: [February 2014](encode3-2014.md) says its requirements "have not yet been finalized". This version sets reporting items and "top 20". The 2016 [TF](transcription-factor.md) and [RBP](rna-binding-protein.md) standards use "top 25".
- No-signal blots: 2014 slide 1 sends them to "Not eligible for use". This version's slide 1 sends them to "Confirm with Mass Spec".
- New lots: 2014 asks only that "a primary characterization must be performed". This version adds the cell-type rule and the accession.
- Histone blot: 2014 asks for extracts from "at least 3 cell lines/types" and a recombinant unmodified histone on the blot. This version drops the count and calls the recombinant histone "preferable".
- Histone ChIP-seq similarity: in 2014 a quantitative measure "has not yet been decided". This version allows it with IDR.
- Histone peptide specificity: 10-fold is "required" here and in 2014. The [2016 histone standard](histone-chromatin.md) calls it "ideal".
- Release gate: in 2014 data "can be submitted" after approval by the "antibody characterization committee". Here data "can be released" after approval by the "antibody characterization review committee". 2014 has no exception route.

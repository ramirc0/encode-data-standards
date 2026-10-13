# Antibody characterization: ENCODE3, February 2014

[Root](../README.md) / [Antibodies](README.md) / ENCODE3 (February 2014)

Source: [Antibody Characterization Standards](https://www.encodeproject.org/documents/88dc12f7-c72d-4b43-a6cd-c6f3a9d08821/@@download/attachment/Antibody_Characterization_ENCODE3_February2014.pdf), title block "ENCODE 3 / February 2014", 9 pages. Pages 1-5 are text. Pages 6-9 are flowchart slides, which the text cites as slides 1 to 4. The document names no organism and states no predecessor. The portal lists it with [August 2015](encode3-2015.md) under previous versions ([snapshot](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md)). Earlier ENCODE antibody rules are in [ENCODE2](encode2.md).

Scope: antibodies to transcriptional regulators and modified histones used for ChIP-seq, and antibodies to RNA-binding proteins (RBPs) used for "binding data". The regulator and RBP methods cover only antibodies to endogenously expressed proteins.

## Transcriptional regulators

The section heading reads "including TFs, chromatin remodelers, and chromatin modifiers". Its first sentence also names "RNA-binding proteins" (p1).

### Approval and primary characterization

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Submission | The antibody characterization committee of the ENCODE DCC approves the lot "for use in that cell type" before ChIP-seq data can be submitted | must | 1 |
| Characterizations | A primary and a secondary characterization, both submitted for review and deemed "COMPLIANT" ([status](../GLOSSARY.md#antibody-characterization-status)), for the lot to be "approved for use" | must | 1 |
| Primary method | Immunoblot (Western blot) or immunoprecipitation (IP-Western), for each lot number and each cell type | must | 1 |
| Band size | Major band within 20% of the size predicted by the coding region of the protein | stated (pass condition) | 1 |
| Band share | Major band >50% of all bands on the gel, excluding antibody bands in an IP. Meeting both band rules passes the primary. | stated (pass condition) | 1 |
| Blot labels | Cell types tested and size markers on each immunoblot | should | 1 |
| IP control | A control IgG precipitation | should | 1 |
| Failed primary | Band rules not met, for example from splice variants or modifications that alter mobility. Rescue by a secondary characterization showing that the band(s) are the correct protein, for example all bands reduced by siRNA. | can | 1 |

The text gives no route for blots with no signal or wrong-size bands. Only the slides do.

### Lots and cell types

| Case | Rule | ENCODE wording | Page |
|---|---|---|---|
| Same lot, new cell type, same banding pattern | No further characterization, if the lot passed primary and secondary in another cell type | stated | 1 |
| Same lot, new cell type, different pattern | Secondary characterization in the new cell type | must | 1 |
| New lot of a characterized antibody | "a primary characterization must be performed". The text names no cell type. | must | 1 |
| New lot, same pattern as the old lot | No further characterization | stated | 1 |
| New lot, different pattern | Secondary characterization | must | 1 |

### Secondary methods

| Method | Criterion | ENCODE wording | Page |
|---|---|---|---|
| 1) siRNA or shRNA against the target mRNA | Band(s) reduced "to no more than 50% of the original signal" | should | 1 |
| 1) siRNA or shRNA | Give the oligonucleotide sequence, or vendor and catalog number. Run a control knockdown. Label cell types and include size markers. Describe the transfection protocol briefly. | should | 1-2 |
| 2) ChIP-seq from a characterized antibody | Comparator: another lot of a characterized antibody, a different characterized antibody to the same regulator, or an epitope-tagged target with an anti-tag antibody | can | 2 |
| 2) ChIP-seq from a characterized antibody | Compare new and previous data. Passing the narrow-peak [IDR](../GLOSSARY.md#idr) cut-offs (below) makes the secondary compliant. | should; stated | 2 |
| 3) Overexpressed tagged protein | For proteins resistant to siRNA knockdown, for example very stable proteins. The primary must first show appropriate specificity. | can; must | 2 |
| 3) Overexpressed tagged protein | Two side-by-side immunoblots of control and overexpressing cells, one with the anti-tag antibody and one with the antibody to the endogenous factor. The endogenous band in control cells matches the exogenous protein in size. | should | 2 |
| IP followed by mass spectrometry | "generally agreed" to be appropriate as a secondary characterization, but "the details of the requirements for this method have not yet been finalized" | stated | 2 |
| Motif enrichment in ChIP-seq peaks | "not considered a valid antibody characterization method" | stated | 2 |

### IDR cut-offs

The notes (p2) give the "Current IDR standards for a narrow-peak ChIP-seq dataset". The rescue ratio is `RR_new = | Np U Nt | / | Np ^ Nt |`. The self consistency ratio is `SR_new = | N1 U N2 | / | N1 ^ N2 |`. The document defines ^ as the intersection and U as the union of 2 peak sets.

| Ratios | Outcome | Quality score | Page |
|---|---|---|---|
| RR_new > 2 AND SR_new > 2 | Low reproducibility (failed) | -1 | 2 |
| RR_new > 2 OR SR_new > 2, but not both | Moderate reproducibility (passed) | 0 | 2 |
| RR_new <= 2 AND SR_new <= 2 | High reproducibility (passed) | +1 | 2 |

## RNA-binding proteins

The RBP section (pp3-4) repeats the regulator text for approval, primary characterization, failed primaries, lot rules, siRNA and overexpressed tagged proteins. The rows below are its differences.

| Criterion | RBP rule | ENCODE wording | Page |
|---|---|---|---|
| Submission | The same committee approves the lot "for use in that cell type" before binding data can be submitted | must | 3 |
| Secondary methods | 1) siRNA or shRNA, 2) overexpressed tagged proteins. ChIP-seq comparison is absent. | stated | 3-4 |
| Notes | Endogenous proteins only. Mass spectrometry is agreed appropriate, but its requirements "have not yet been finalized". There is no motif or IDR note. | stated | 4 |

## Modified histones

### Approval and primary characterization

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Submission | The antibody characterization committee of the ENCODE DCC approves the lot before ChIP-seq data can be submitted. The rule has no cell-type clause. | must | 5 |
| Characterizations | Primary and secondary, both deemed "COMPLIANT", for the lot to be "approved for use" | must | 5 |
| Primary per lot | A primary characterization of each lot number | must | 5 |
| Blot content | Immunoblot of nuclear or whole cell extract, to show a positive band at the size of the histone, plus a recombinant unmodified version of that histone, to show lack of reactivity | should | 5 |
| Extracts | "at least 3 cell lines/types", including the species in which the antibody will be used | should | 5 |
| Band share | Specific histone band at least 50% of the protein signal | should | 5 |
| Band ratio | At least 10-fold enrichment relative to any other single band | should | 5 |
| Recombinant ratio | At least 10-fold over the unmodified recombinant histone | should | 5 |
| Blot labels | Cells labeled and size markers included | should | 5 |

### Secondary characterization and cell types

| Criterion | Rule | ENCODE wording | Page |
|---|---|---|---|
| Methods | Dot blots, peptide arrays or peptide competitions | stated | 5 |
| Commercial arrays | Acceptable. Give vendor and catalog number. | acceptable; should | 5 |
| Small arrays | The array holds the most relevant peptides for the antibody | critical | 5 |
| Peptide competition | The competition series uses the most relevant peptides | important | 5 |
| Specificity | "A 10-fold enriched binding signal for the modification of interest relative to other modifications is required" | required | 5 |
| Peptide map | Annotated map of the peptides on the blot or array | should | 5 |
| ChIP-seq similarity | It was "generally agreed" that similarity to ChIP-seq from a different lot, a different antibody to the same modification, or a component of the modifying complex "should be allowable". A quantitative measure of the match "has not yet been decided" and "may not be the same for all histone marks". The method "may be allowed" once measures exist. | stated | 5 |
| Additional cell types | A lot that passed primary and secondary is eligible in all cell types, "with the caveat that the species must have been included in the primary characterization" | stated | 5 |

## Flowchart slides

Slides 1 to 4 (pp6-9) restate the rules as flowcharts. The rows below come from the slide images. Each path ends in "ENCODE Ab database: Eligible for use" or "Not eligible for use".

| Slide | Content | ENCODE wording | Page |
|---|---|---|---|
| 1, initial characterization (TFs, chromatin remodelers, chromatin modifiers, RBPs) | A Western blot or IP-Western "must be done for all lot numbers of any antibody using extracts from the same cell type used for the ChIP-seq" | must | 6 |
| 1 | "Major band is within 20% of the right size and >50% signal on gel" leads to secondary characterization ("siRNA, tagging, ChIP-seq#, Mass Spec*"), then eligible | stated | 6 |
| 1 | "Multiple splice variants, heavy modifications" leads to "Not Pass" and "Confirm with siRNA". That box leads to eligible if it meets requirements and to not eligible if not. | stated | 6 |
| 1 | "wrong size, ladder of bands, no signal" leads to "Does not meet requirements" and "Not eligible for use". No rescue is drawn. | stated | 6 |
| 1 | Footnotes: ChIP-seq "#not appropriate for RBP". Mass Spec "*not yet approved". | stated | 6 |
| 2, same lot in a new cell type (same four classes) | A Western blot or IP-Western "must be done using extracts from the new cell type". Same banding pattern: "No further characterization is needed". Different pattern: "Secondary characterization is required". | must | 7 |
| 3, new lot (TFs, chromatin remodelers, chromatin modifiers) | Western blot or IP-Western of the new lot on extracts "from the same cell type used for the ChIP-seq". Same pattern as the approved lot: eligible. "Pattern is different, but within ENCODE standards": secondary characterization. "wrong size, ladder of bands, no signal": not eligible. | stated | 8 |
| 4, modified histone | A Western blot or IP-Western "must be done for all lot numbers of any antibody". "extracts from at least 3 cell types should show signals only for histones" AND "recombinant unmodified histone protein should not be detected". | must; should | 9 |
| 4 | "Peptide arrays or peptide competitions must show appropriate specificity". Pass: "Eligible for use in all cells for that species". "Cross reactivity": not eligible. | must | 9 |

## Conflicts and gaps

Slides against text:

- Splice-variant failures: slide 1 offers only "Confirm with siRNA". Text item 1b allows any secondary characterization and gives siRNA as an example (p1).
- Histone blot: slide 4 asks that extracts "show signals only for histones". The text sets at least 50% of the protein signal and at least 10-fold over any other band (p5).
- New lots: slide 3 uses extracts "from the same cell type used for the ChIP-seq". Text item 3 names no cell type (p1).
- No-signal blots: only slides 1 and 3 route them, to "Not eligible for use". The text gives no route.
- Slide 1 draws no failure arrow from the secondary characterization box.
- Mass spec sits in the secondary boxes of slides 1 to 3 but is footnoted "not yet approved". The notes say its requirements "have not yet been finalized" (pp2, 4).

Within the text:

- The histone section has no new-lot item. Per-lot rules rest on its opening sentence and item 1 (p5).
- The document has no exception or special-request route.
- The regulator section names "RNA-binding proteins" in its first sentence (p1). A separate RBP section follows.
- The histone rule prints "a immunoblot" (p5).
- The document defines ^ and U but not Np, Nt, N1 or N2. A ratio of exactly 2 passes (<= 2). The portal tiers in the [glossary](../GLOSSARY.md#idr) place exactly 2 in no row.

Against other versions (full timeline in [ENCODE2 changes](encode2.md#changes-across-versions)):

- Motif enrichment: the 2011 and 2012 [ENCODE2 sources](encode2.md) accept it as a TF secondary method, at least 4-fold with the motif in at least 10% (2011) or >10% (2012) of peaks. Here it is "not considered a valid antibody characterization method". The [2016 TF standard](transcription-factor.md) lists it again as Secondary Method 4, with an accept probability greater than 0.6.
- Knockdown: ENCODE2 allows at most 30% residual signal (2010 "30% or less", 2011 and 2012 "no more than 30%"). Here bands drop "to no more than 50% of the original signal".
- TF immunoblot: 2011 and 2012 ask for "at least 50%" of the blot signal and treat a size off by more than 20% as an exception. Here the major band must be within 20% of the predicted size and >50% of all bands.
- Histone blot: 2008 to 2012 use nuclear extracts "from each species to be studied". Here extracts come from "at least 3 cell lines/types" including the species.
- Histone peptide specificity: 10-fold "would contribute to confidence" (2008, 2010) or "provides confidence" (2011, 2012). Here it "is required".
- Histone tests: the ENCODE2 mass spec test (at least 80% of the IP'd histone signal) is absent. So are both mutant tests, enzyme mutants (below 10% of wild type) and mutant histones (at least 10-fold reduction). ChIP agreement, allowed for old antibodies and new lots in 2008 and 2010, is deferred.
- [August 2015](encode3-2015.md) sets mass spec criteria ("top 20"), routes no-signal blots to mass spec, adds new-lot cell types and accessions, drops the 3-cell-line count, makes the recombinant histone "preferable", allows histone ChIP-seq similarity with IDR and adds an exception route.

# TF antibodies: May 2016

[Root](../README.md) / [Antibodies](README.md) / Transcription factor

Source: [ENCODE TF Antibody Characterization Guidelines](https://www.encodeproject.org/documents/c7cb0632-7e5f-455e-9119-46a54f160711/@@download/attachment/ENCODE_Approved_May_2016_TF_Antibody%20Characterization_Guidelines.pdf), "Approved on May 20, 2016", 7 pages. The [experiment guidelines page](../sources/pages/about__experiment-guidelines.md) lists it as current, as "Antibody Characterization Standards for transcription factors (May 2016)".

Scope: antibodies used in TF ChIP-seq that recognize endogenously expressed proteins (Note 1). Requirements for epitope-tagged proteins "are described elsewhere".

Replaces: not stated. The [previous versions page](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md) holds the [August 2015](encode3-2015.md) and [February 2014](encode3-2014.md) standards, which covered transcriptional regulators in one section of a combined document. The [August 2019 epitope-tagged standard](epitope-tagged-tf.md) supersedes this one "concerning epitope tagged datasets".

## Review and outcomes

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Meaning of a pass | An antibody that passes a primary method and, "as appropriate", a supporting secondary method is "believed" to recognize the target and to be active in ChIP in the cell type(s) tested | stated | 1 |
| Review | A panel of ENCODE investigators and analysts reviews the data during ChIP-seq data finalization. Validated antibodies "are designated as such". | stated | 1 |
| Data access | All characterization data are on the ENCODE portal | stated | 1 |
| Below thresholds, data judged useful | The antibody and its ChIP-seq data are flagged as having "a quality concern". The deficiency is reported. | stated | 1 |
| Data users | Weigh the primary data against their own knowledge and requirements | recommend | 1 |
| Primary method not described here | Submitted as a special request, "so annotated and flagged" | stated | 4 |
| Works in ChIP but fails the tests (Note 3) | An exception "can be considered". The antibody characterization review committee and the ENCODE Production PIs decide case by case. | can; will | 7 |
| Exempt antibodies | Datasets using these "[exempt](../GLOSSARY.md#antibody-characterization-status)" antibodies "will be flagged in the ENCODE data" | will | 7 |

The portal records each review result as a [characterization status](../GLOSSARY.md#antibody-characterization-status). Of the status names, this document uses only "exempt".

## Characterization flowchart

The I-A flowchart (p2) is an image. This table transcribes it.

| Element | Flowchart content |
|---|---|
| Start | "Western blot or IP Western", which splits into "Pass" and "Fail" |
| Routing | "Pass" and "Fail" each have arrows to both "Secondary Characterization" and "IP Mass spec" |
| End of the secondary path | "Submit Western (failed or successful) and Secondary Characterization data for review and archive" |
| End of the mass spec path | "Submit Western (failed or successful) plus successful IP Mass Spec data for review and archive" |

## Primary method 1: immunoblot

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| First test | Every TF ChIP-seq antibody gets an immunoblot first: a Western blot, or an IP followed by a Western blot ("IP Western") | stated | 2 |
| Major band size | Within 20% of the size predicted by the size of the coding region | acceptable | 2 |
| Major band share | >50% of all bands on the gel. Antibody bands are excluded for an IP. | acceptable | 2 |
| Outcome | Both met: the antibody is considered "to meet expectations for the primary characterization" | stated | 2 |
| Size markers | On every immunoblot | must | 2 |
| Evidence | Submitted for each cell type or tissue tested | stated | 2 |
| IP-Western control | A control IgG precipitation on the same gel | stated | 2 |
| Blot passes | One further characterization: IP mass spec or any one secondary method | required | 2 |
| Blot fails from too many bands, or bands too far from the predicted migration | Can be "rescued" by a secondary method showing that the bands are the correct protein, for example all bands reduced by a specific siRNA | can | 2 |
| Blot fails | IP mass spec "is performed". The failed or partially failed blot goes in the report. | stated | 2 |

The document calls the size and share criteria "Current acceptable parameters".

## Primary method 2: IP mass spec

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| After a failed blot | For failures "ranging from no bands to patterns that do not meet the thresholds". The failed or ambiguous blot is still shown. | can | 3 |
| After a passing blot | Replaces the secondary methods | can | 3 |
| IP | Cell or nuclear extract immunoprecipitated with the same antibody used for ChIP-seq, then fractionated on a denaturing polyacrylamide gel | stated | 3 |
| Report: gel | IP-Western gel image outlining the slices submitted for mass spec | stated | 3 |
| Report: peptides | All peptides, with peptide counts, from all immunoreactive bands | stated | 3 |
| Report: enrichment | Fold enrichment of all peptides against a mock IP, or against proteins immunoprecipitated from the same cell type with other antibodies from the same host species | stated | 3 |
| Report: contaminant set | The list of proteins used as the IP contaminant set | must | 3 |
| Report: TFs above the target | Which proteins ranked above the target (by fold enrichment) are TFs, and which of those share its TF family | stated | 3 |
| Enrichment | Target enriched against the mock IP or the contaminant set | should | 3 |
| Rank | In the top 25 ranked proteins and the top most-enriched TF (by fold enrichment) in the immunoreactive band | should | 3 |
| Rank exception | Higher-ranked TFs are allowed if they are known partners of the target and/or of a higher-ranked TF that is itself a known partner | stated | 3 |
| Interaction evidence | Publications or interaction databases such as BioGRID, among other sources | can | 3 |
| Family rank | Top-ranked member of its TF family. A publication showing that a higher-ranked member dimerizes with the target allows an exception. | should | 3 |
| None of these met | The characterization document can be submitted as a special request ("see Note 3") | can | 4 |

The pass criteria sit under the heading "IP mass spec requirements to be considered fully validated for ENCODE data".

If the target has 0 peptides in the mock IP, ranking by enrichment "can not be performed". These rules apply instead.

| Case | Outcome | Page |
|---|---|---|
| Target is the top TF by number of detected peptides | Passes | 3 |
| Target is not the top TF, but the TFs with more counts are documented in the same complex and/or interact directly with it | Passes | 3 |
| Target is not the top TF, but the non-target TFs with more peptides were detected by mass spec with two different antibodies to the target | Passes. The other TFs are assumed to be bona fide partners not yet in the literature. | 3-4 |
| Target is not the top TF, and the TFs with more counts were never linked to it | Flagged. The flag says enrichment could not be determined for lack of peptides in the IgG, and that no published data link the target to those TFs. | 4 |

## Secondary methods

At least one successful secondary method, or IP mass spec in its place, "is required" to support a successful Western or IP-Western (p5). These methods check that the bands on the blot are the intended TF.

### Method 1: siRNA or shRNA knockdown

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Band reduction | Band(s) on a western blot "reduced by at least 50% of the control signal" | should | 5 |
| Intended use | Especially blots with multiple bands and unpredicted migration | stated | 5 |
| Reagent | Sequence, or vendor and catalog number, of the oligonucleotide(s) | should | 5 |
| Control knockdown | Performed as well | should | 5 |
| Blot | Cell types labeled. Size markers included. | will; should | 5 |
| Transfection | A brief protocol description | will | 5 |

### Method 2: ChIP-seq from a characterized antibody

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Comparator | ChIP-seq from a different lot of a characterized antibody, or from a different characterized antibody to the same regulator | can | 5 |
| Tagged comparator | ChIP-seq from an endogenous epitope-tagged version of the target | can | 5 |
| Test | New and previous ChIP-seq compared using [IDR](../GLOSSARY.md#idr). Passing the narrow-peak cut-offs of Note 2 scores the method "successful". | stated | 5 |
| Accessions | The comparison lot and ChIP-seq data are identified by their ENCODE antibody and experiment accessions | stated | 5 |

### Method 3: epitope-tagged TF expression

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Use | TFs resistant to shRNA or siRNA knockdown, for example very stable proteins. The comparison is with overexpressed or endogenously epitope-tagged TF. | stated | 5 |
| Prerequisite | The primary characterization first shows "the appropriate specificity" on the western or IP-Western | must | 5 |
| Test | Two side-by-side immunoblots of control cells and cells expressing the tagged factor. The first uses the anti-tag antibody. The second uses the antibody to the endogenous factor and shows that the bands in control and ectopic cases "correspond". | can | 5 |

### Method 4: motif analysis

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Eligible factor | A sequence-specific transcription factor | stated | 6 |
| Eligible motif | Previously well characterized by in vitro or in vivo experiments | stated | 6 |
| Eligible antibody | Raised to a region of the TF that is unique among TFs of the same family | stated | 6 |
| Peak set | High-quality peaks at a "0.01 IDR cut off" | can | 6 |
| Metric | Global Enrichment z-score: motif enrichment in ChIP peaks over shuffled motifs of the same composition | should | 6 |
| Metric | Positional Bias z-score: distance of the motif to the peak center | should | 6 |
| Metric | Peak Rank Bias z-score: motif distribution across peaks ranked by ChIP intensity | should | 6 |
| Score | The mean of the three z-scores gives the final enrichment rank among 282 motif groups and the "accept probability" | stated | 6 |
| Pass | Accept probability greater than 0.6, printed "greater that 0.6" | stated ("current criteria") | 6 |
| Report | DCC file identifiers of the peak .bed files, a brief method description citing the standards documents, the accept probability, the motif (PWM) with its enrichment rank, and the positional bias and peak rank scores | stated | 6 |
| Excluded | TFs that do not bind in a sequence-specific manner | cannot | 6 |
| Excluded | TFs with no information on their DNA motif | cannot | 6 |
| Excluded | TFs shown to bind DNA indirectly, through proteins that bind DNA directly | cannot | 6 |
| Failed motif test | Does not indicate poor antibody or data quality. Other secondary methods can validate the antibody. | can | 7 |

The accept probability "measures confidence in the antibody under investigation being of high quality for ChIP experiments" (p6).

## IDR cut-offs (Note 2)

Note 2 gives the "Current IDR standards for a narrow-peak ChIP-seq dataset", which method 2 uses. The rescue ratio is `RR_new = | Np U Nt | / | Np ^ Nt |`. The self consistency ratio is `SR_new = | N1 U N2 | / | N1 ^ N2 |`. The document defines `^` as the intersection and `U` as the union of 2 peak sets.

| Ratios | Outcome | Quality score | Page |
|---|---|---|---|
| RR_new > 2 AND SR_new > 2, printed "(R_new > 2)" | Low reproducibility (failed) | -1 | 7 |
| RR_new > 2 OR SR_new > 2, but not both | Moderate reproducibility (passed) | 0 | 7 |
| RR_new <= 2 AND SR_new <= 2 | High reproducibility (passed) | +1 | 7 |

## Lot and cell-type rules

The document names no organism, apart from human cell lines and tissues in these rules.

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Lots | Each lot is characterized independently, because lots "can vary considerably" | stated | 1 |
| Same lot, new cell type, same pattern | The lot passed characterization in another cell type, and the blot or IP banding pattern matches: no further characterization | stated | 4 |
| Same lot, new cell type, different pattern | A secondary characterization in the new cell type | stated | 4 |
| Same lot, human tissues | Exceptions "will be considered", because tissue is often too scarce for both characterization and ChIP-seq | will be considered | 4 |
| Same lot, 2 passes | An antibody that passed in 2 different human cell lines and/or tissues "does not have to be characterized in each tissue type" | stated | 4 |
| New lot, first use | A primary method (immunoblot or IP mass spec) in one of the cell types used for the previous lot, plus the cell type whose ChIP-seq data will be deposited | stated | 4 |
| New lot, comparison | The ENCODE antibody accession of the previously characterized lot used for comparison is indicated | stated | 4 |
| New lot, same patterns in both cell types | No further characterization | stated | 4 |
| New lot, different patterns | A secondary characterization | stated | 4 |
| New lot, tissues | Exceptions "will be considered" for antibodies "well-characterized and used extensively by the field (e.g a monoclonal antibody to RNAPII)" | will be considered | 4 |
| New lot, 2 passes | In that case, a new lot "does not have to be characterized in each tissue type" if a previous lot passed in 2 different human cell lines and/or tissues | stated | 4 |

## Conflicts and gaps

Within the document:

- The motif cut-off cites "note 4" (p6). The notes run 1 to 3.
- The fail rule prints "(R_new > 2)" (p7). The other two rules and the definition use RR_new.
- "greater that 0.6" (p6) stands for "greater than 0.6".
- Section IB cites "figure 1 above" (p5). The only figure is the unnumbered I-A flowchart.
- After a failed blot, p2 says IP mass spec "is performed". Item b and the flowchart also allow rescue by a secondary method. The text does not say which route applies when.
- The mass spec criteria sit under "requirements to be considered fully validated", but the enrichment and rank criteria use "should" (p3).
- The IDR ratios use Np, Nt, N1 and N2 without defining them (p7).
- The motif test depends on a pipeline (282 motif groups, accept probability) that the document neither specifies nor cites (p6).
- The document names two flags, "quality concern" (p1) and "exempt" (Note 3). It does not say how they relate.

Against other portal pages:

- Note 2 counts a ratio of exactly 2 as passing (<= 2). The portal tiers in the [glossary](../GLOSSARY.md#idr) place exactly 2 in no row.
- The motif test uses peaks at a 0.01 IDR cut-off. The portal's [IDR thresholded peaks](../GLOSSARY.md#idr-thresholded-peaks) use 0.05.
- The 2-cell-line rules let an antibody skip characterization "in each tissue type". The [antibody characterization process page](../sources/pages/help__antibody_characterization_process.md) says antibodies other than histone-modification antibodies are "required" to be characterized "in each cell type and species".
- The portal audit "Antibody characterized with exemption" covers a failed primary that a secondary characterization rescued ([audits page](../sources/pages/data-standards__audits.md)). This document treats that rescue as a normal path (item b, p2). Its "exempt" label belongs to Note 3 exceptions.

Against other versions:

- Knockdown: [2014](encode3-2014.md) and [2015](encode3-2015.md) say bands are "reduced to no more than 50% of the original signal". Here they are "reduced by at least 50% of the control signal". Both cap the residual band at 50% if "reduced by" means the size of the drop. The reference changed from the original to the control signal.
- Mass spec rank: "top 20 ranked proteins" in 2015, where mass spec was secondary method 4, became "top 25" here. The [2019 epitope-tagged standard](epitope-tagged-tf.md) uses top 20.
- Mass spec role: in 2014 its requirements "have not yet been finalized". 2015 lets it rescue a blot with no signal "as the sole characterization method". Here it is Primary Method 2 and can replace a secondary method.
- Motif: 2014 says motif enrichment "is not considered a valid antibody characterization method". Here it is Secondary Method 4.
- Same lot in a new cell type: 2014 and 2015 require that the lot "previously passed both primary and secondary characterization". Here it "previously passed characterization". The human-tissue exception and the 2-cell-line rule are new.
- New lot: 2014 asks only for "a primary characterization". 2015 adds a cell-type rule ("at least one of the same cell types" plus the deposit cell type) and the comparison accession. Here the primary may be IP mass spec, and the tissue exception for well-characterized antibodies is new.
- Modal words: 2015 says a secondary characterization "must be performed" when banding patterns differ. Here it "is performed".
- Tagged ChIP-seq comparator: 2014 and 2015 accept "an epitope-tagged version of the target protein and an antibody that recognizes the tag". Here the tagged version must be "endogenous".
- Tagged-protein blots: 2014 and 2015 compare with "overexpressed, tagged proteins" and ask that the control band be "the same size as the exogeneous protein". Here endogenously tagged proteins also qualify, and the bands must "correspond". "should be performed" became "can be performed".
- The zero-peptide mock-IP rules and the BioGRID clause are new. 2015 says only "unless the higher ranked TFs are known interacting partners".
- Release gate: 2014 requires approval by "the antibody characterization committee of the ENCODE DCC" before data "can be submitted". 2015 requires approval by its "review committee" before data "can be released". Here a panel reviews data during "data finalization", and useful data below thresholds get a "quality concern" flag.
- The [2019 epitope-tagged standard](epitope-tagged-tf.md) supersedes this one for tagged datasets. Its blot test keeps the 20% window and drops the >50% band share.

# RBP antibodies: November 2016

[Root](../README.md) / [Antibodies](README.md) / RNA-binding protein

Source: [ENCODE RBP Antibody Characterization Guidelines](https://www.encodeproject.org/documents/fb70e2e7-8a2d-425b-b2a0-9c39fa296816/@@download/attachment/ENCODE_Approved_Nov_2016_RBP_Antibody_Characterization_Guidelines.pdf), "Approved on November 18, 2016", 5 pages. The [experiment guidelines page](../sources/pages/about__experiment-guidelines.md) lists it as current, as "Antibody Characterization Standards for RNA binding proteins (November 2016)". The [eCLIP standards](../rna-binding/eclip/standards.md) link it.

Scope: antibodies used in RNA Binding Protein experiments that recognize endogenously expressed proteins (Note 1). The document names no specific assay, and it has no ChIP-seq or motif method.

Replaces: not stated. The [previous versions page](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md) holds the [August 2015](encode3-2015.md) and [February 2014](encode3-2014.md) standards, which covered RBPs in one section of a combined document.

## Review and outcomes

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Meaning of a pass | An antibody that passes a primary method and, "as appropriate", a supporting secondary method is "believed" to recognize the target and to be active in the cell type(s) tested | stated | 1 |
| Review | A panel of ENCODE investigators and analysts reviews the data during ENCODE data finalization. Validated antibodies "are designated as such". | stated | 1 |
| Data access | All characterization data are on the ENCODE portal | stated | 1 |
| Below thresholds, data judged useful | The antibody and its data are flagged as having "a quality concern". The deficiency is reported. | stated | 1 |
| Data users | Weigh the primary data against their own knowledge and requirements | recommend | 1 |
| Primary method not described here | Submitted as a special request, "so annotated and flagged" | stated | 4 |
| Works in binding assays but fails the tests (Note 2) | An exception "can be considered". The antibody characterization review committee and the ENCODE Production PIs decide case by case. | can; will | 5 |
| Exempt antibodies | Datasets using these "[exempt](../GLOSSARY.md#antibody-characterization-status)" antibodies "will be flagged in the ENCODE data" | will | 5 |

The portal records each review result as a [characterization status](../GLOSSARY.md#antibody-characterization-status). Of the status names, this document uses only "exempt".

## Characterization flowchart

The "A. Characterization flowchart" (p2) is an image. This table transcribes it.

| Element | Flowchart content |
|---|---|
| Start | "Western blot or IP Western", which splits into "Pass" and "Fail" |
| Routing | "Pass" and "Fail" each have arrows to both "Secondary Characterization" and "IP Mass spec" |
| End of the secondary path | "Submit Western (failed or successful) and Secondary Characterization data for review and archive" |
| End of the mass spec path | "Submit Western (failed or successful) plus successful IP Mass Spec data for review and archive" |

## Primary method 1: immunoblot

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| First test | Every RBP antibody gets an immunoblot first: a Western blot, or an IP followed by a Western blot ("IP Western") | stated | 2 |
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
| IP | Cell or nuclear extract immunoprecipitated with "the same antibody used in the ENCODE experiment", then fractionated on a denaturing polyacrylamide gel | stated | 3 |
| Report: gel | IP-Western gel image outlining the slices submitted for mass spec | stated | 3 |
| Report: peptides | All peptides, with peptide counts, from all immunoreactive bands | stated | 3 |
| Report: enrichment | Fold enrichment of all peptides against a mock IP, or against proteins immunoprecipitated from the same cell type with other antibodies from the same host species | stated | 3 |
| Report: contaminant set | The list of proteins used as the IP contaminant set | must | 3 |
| Report: RBPs above the target | Which proteins ranked above the target (by fold enrichment) are RBPs, and which of those share its family | stated | 3 |
| Enrichment | Target enriched against the mock IP or the contaminant set | should | 3 |
| Rank | In the top 25 ranked proteins and the top most-enriched RBP (by fold enrichment) in the immunoreactive band | should | 3 |
| Rank exception | Higher-ranked RBPs are allowed if they are known partners of the target and/or of a higher-ranked RBP that is itself a known partner | stated | 3 |
| Interaction evidence | Publications or interaction databases such as BioGRID, among other sources | can | 3 |
| Family rank | Top-ranked member of its RBP family. A publication showing that a higher-ranked member dimerizes with the target allows an exception. | should | 3 |
| None of these met | The characterization document can be submitted as a special request ("see Note 3") | can | 4 |

The pass criteria sit under the heading "IP mass spec requirements to be considered fully validated for ENCODE data".

If the target has 0 peptides in the mock IP, ranking by enrichment "cannot be performed". These rules apply instead.

| Case | Outcome | Page |
|---|---|---|
| Target is the top RBP by number of detected peptides | Passes | 3 |
| Target is not the top RBP, but the RBPs with more counts are documented in the same complex and/or interact directly with it | Passes | 3 |
| Target is not the top RBP, but the non-target RBPs with more peptides were detected by mass spec with two different antibodies to the target | Passes. The other RBPs are assumed to be bona fide partners not yet in the literature. | 3-4 |
| Target is not the top RBP, and the RBPs with more counts were never linked to it | Flagged. The flag says enrichment could not be determined for lack of peptides in the IgG, and that no published data link the target to those RBPs. | 4 |

## Secondary methods

At least one successful secondary method, or IP mass spec in its place, "is required" to support a successful Western or IP-Western (p4). These methods check that the bands on the blot are the intended RBP.

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Method 1 (siRNA or shRNA): band reduction | Band(s) on a western blot "reduced by at least 50% of the control signal" | should | 5 |
| Method 1: intended use | Especially blots with multiple bands and unpredicted migration | stated | 5 |
| Method 1: reagent | Sequence, or vendor and catalog number, of the oligonucleotide(s) | should | 5 |
| Method 1: control knockdown | Performed as well | should | 5 |
| Method 1: blot | Cell types labeled. Size markers included. | will; should | 5 |
| Method 1: transfection | A brief protocol description | will | 5 |
| Method 2 (tagged protein): use | Proteins resistant to shRNA or siRNA knockdown, for example very stable proteins. The comparison is with overexpressed or endogenously epitope-tagged RBP. | stated | 5 |
| Method 2: prerequisite | The primary characterization first shows "the appropriate specificity" on the western or IP-Western | must | 5 |
| Method 2: test | Two side-by-side immunoblots of control cells and cells expressing the tagged factor. The first uses the anti-tag antibody. The second uses the antibody to the endogenous factor and shows that the bands in control and ectopic cases "correspond". | can | 5 |
| Method 3 (mass spectrometry) | Mass spectrometry "can be used as a characterization method after primary characterization by western or IP-western". It sets no criteria of its own. | can | 5 |

## Lot and cell-type rules

The document names no organism, apart from human cell lines and tissues in these rules.

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Lots | Each lot is characterized independently, because lots "can vary considerably" | stated | 1 |
| Same lot, new cell type, same pattern | The lot passed characterization in another cell type, and the blot or IP banding pattern matches: no further characterization | stated | 4 |
| Same lot, new cell type, different pattern | A secondary characterization in the new cell type | stated | 4 |
| Same lot, human tissues | Exceptions "will be considered", because tissue is often too scarce for both the characterization and "a subsequent experiment" | will be considered | 4 |
| Same lot, 2 passes | An antibody that passed in 2 different human cell lines and/or tissues "does not have to be characterized in each tissue type" | stated | 4 |
| New lot, first use | A primary method (immunoblot or IP mass spec) in one of the cell types used for the previous lot, plus "the cell type for which data will be deposited" | stated | 4 |
| New lot, comparison | The ENCODE antibody accession of the previously characterized lot used for comparison is indicated | stated | 4 |
| New lot, same patterns in both cell types | No further characterization | stated | 4 |
| New lot, different patterns | A secondary characterization | stated | 4 |

## Conflicts and gaps

Within the document:

- Special requests cite "Note 3" (p4). The notes run 1 to 2, and the exception note is Note 2.
- The Secondary Method 2 heading reads "Expression patterns of an epitope-tagged transcription factor" (p5). The body says RBP.
- Section B cites "figure 1 above" (p4). The only figure is the unnumbered "A. Characterization flowchart".
- After a failed blot, p2 says IP mass spec "is performed". Item b and the flowchart also allow rescue by a secondary method. The text does not say which route applies when.
- The immunoblot parameters cite "known behaviors of typical nuclear factors" (p2).
- Secondary Method 3 sets no criteria of its own. It points back with "As indicated above" (p5).

Against other standards and portal pages:

- The [TF standard](transcription-factor.md) adds a tissue exception and a 2-cell-line rule for new lots. The RBP new-lot rule has neither.
- The 2-cell-line rule lets an antibody skip characterization "in each tissue type". The [antibody characterization process page](../sources/pages/help__antibody_characterization_process.md) says antibodies other than histone-modification antibodies are "required" to be characterized "in each cell type and species".
- The portal audit "Antibody characterized with exemption" covers a failed primary that a secondary characterization rescued ([audits page](../sources/pages/data-standards__audits.md)). This document treats that rescue as a normal path (item b, p2). Its "exempt" label belongs to Note 2 exceptions.

Against other versions:

- Mass spec rank: the [2015](encode3-2015.md) RBP section says "top 20 ranked proteins". This document says "top 25".
- Mass spec gel: 2015 outlines gel slices "if individual slices are analyzed". Here the outline has no condition.
- Knockdown: [2014](encode3-2014.md) and 2015 say bands are "reduced to no more than 50% of the original signal". Here they are "reduced by at least 50% of the control signal".
- Same lot in a new cell type: 2014 and 2015 require that the lot "previously passed both primary and secondary characterization". Here it "previously passed characterization". The human-tissue exception and the 2-cell-line rule are new.
- IP mass spec: in 2014 its requirements "have not yet been finalized". 2015 makes it secondary method 3 and lets it rescue a blot with no signal "as the only characterization method". Here it is both Primary Method 2 and Secondary Method 3.
- New lot: 2015 names "the cell type for which ChIP-seq data will be deposited". Here it is "the cell type for which data will be deposited".
- Tagged-protein blots: 2014 and 2015 compare with "overexpressed, tagged proteins" and ask that the control band be "the same size as the exogeneous protein". Here endogenously tagged proteins also qualify, and the bands must "correspond".
- The zero-peptide mock-IP rules and the BioGRID clause are new. 2015 says only "unless the higher ranked RBPs are known interacting partners".
- Modal words: 2015 says a secondary characterization "must be performed" when banding patterns differ. Here it "is performed".
- Release gate: 2014 and 2015 require committee approval "for use in that cell type" before binding data can be submitted (2014) or released (2015). Here a panel reviews data during "data finalization", and useful data below thresholds get a "quality concern" flag.

# fRIP antibodies: November 2016

[Root](../README.md) / [Antibodies](README.md) / fRIP

Source: [ENCODE fRIP Antibody Characterization Guidelines](https://www.encodeproject.org/documents/2c01f6b3-f04d-453d-9a32-4b1ecf1f26aa/@@download/attachment/ENCODE_Approved_Nov_2016_fRIP_Antibody_Characterization_Guidelines.pdf), "Approved on November 4, 2016", 5 pages. The [experiment guidelines page](../sources/pages/about__experiment-guidelines.md) lists it as current, as "Antibody Characterization Standards for antibodies used in fRIP assays (November 2016)".

Scope: antibodies used in fRIP experiments, whose targets are chromatin-associated proteins (CAPs). The document never expands "fRIP". It describes fRIP as a cross-linked IP assay, distinct from the [FRiP](../GLOSSARY.md#frip) metric.

Replaces: not stated. The [previous versions page](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md) holds no earlier fRIP standard.

## Review and outcomes

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Meaning of a pass | An antibody that passes a primary method and, "as appropriate", a supporting secondary method is "believed" to recognize the target and to be "active in immunoprecipitation" in the cell type(s) tested | stated | 1 |
| Review | A panel of ENCODE investigators and analysts reviews the data during fRIP data finalization. Validated antibodies "are designated as such". | stated | 1 |
| Data access | All characterization data are on the ENCODE portal | stated | 1 |
| Below thresholds, data judged useful | The antibody and its data are flagged as having "a quality concern". The deficiency is reported. | stated | 1 |
| Data users | Weigh the primary data against their own knowledge and requirements | recommend | 1 |
| Primary method not described here | Submitted as a special request, "so annotated and flagged" | stated | 5 |

The document has no Notes section and no exemption process. The portal records each review result as a [characterization status](../GLOSSARY.md#antibody-characterization-status). This document uses none of the status names.

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
| First test | Every antibody used in fRIP gets an immunoblot first: a Western blot, or an IP followed by a Western blot ("IP Western") | stated | 2 |
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

### Part d: IP under fRIP conditions

Because fRIP is cross-linked, each targeted CAP is also immunoprecipitated "under fRIP conditions" and analyzed by western (p3). An antibody passes "this QC step" if it meets criteria i to iii.

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Replicate IPs | Two independent IPs, compared to 10% of lysate, under fRIP conditions | stated | 3 |
| Pass i | Both IPs show a band "of appropriate size" | stated | 3 |
| Pass ii | No band larger than the targeted CAP. Smaller bands are allowed, as likely degradation products of shearing and cross-linking. | stated | 3 |
| Pass iii | The band with the strongest signal corresponds to the size of the protein the antibody was raised against | stated | 3 |

## Primary method 2: IP mass spec

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| After a failed blot | For failures "ranging from no bands to patterns that do not meet the thresholds". The failed or ambiguous blot is still shown. | can | 3 |
| After a passing blot | Replaces the secondary methods | can | 3 |
| IP | Cell or nuclear extract immunoprecipitated with "the same antibody used to perform fRIP", then fractionated on a denaturing polyacrylamide gel | stated | 3 |
| Report: gel | IP-Western gel image outlining the slices submitted for mass spec | stated | 3 |
| Report: peptides | All peptides, with peptide counts, from all immunoreactive bands | stated | 3 |
| Report: enrichment | Fold enrichment of all peptides against a mock IP, or against proteins immunoprecipitated from the same cell type with other antibodies from the same host species | stated | 3 |
| Report: contaminant set | The list of proteins used as the IP contaminant set | must | 3 |
| Report: proteins above the target | Which proteins ranked above the target (by fold enrichment) "are TFs", and which of those share its "TF family" | stated | 3 |
| Enrichment | Target enriched against the mock IP or the contaminant set | should | 3 |
| Rank | In the top 25 ranked proteins and the top most-enriched CAP (by fold enrichment) in the immunoreactive band | should | 3 |
| Rank exception | Higher-ranked CAPs are allowed if they are known partners of the target and/or of a higher-ranked CAP that is itself a known partner | stated | 3 |
| Interaction evidence | Publications or interaction databases such as BioGRID, among other sources | can | 3 |
| Family rank | Top-ranked member of its CAP family. A publication showing that a higher-ranked member dimerizes with the target allows an exception. | should | 3-4 |
| None of these met | The characterization document can be submitted as a special request ("see Note 3") | can | 4 |

The pass criteria sit under the heading "IP mass spec requirements to be considered fully validated for ENCODE data".

If the target has 0 peptides in the mock IP, ranking by enrichment "can not be performed". These rules apply instead.

| Case | Outcome | Page |
|---|---|---|
| Target is the top CAP by number of detected peptides | Passes | 4 |
| Target is not the top CAP, but the CAPs with more counts are documented in the same complex and/or interact directly with it | Passes | 4 |
| Target is not the top CAP, but the non-target CAPs with more peptides were detected by mass spec with two different antibodies to the target | Passes. The other CAPs are assumed to be bona fide partners not yet in the literature. | 4 |
| Target is not the top CAP, and the CAPs with more counts were never linked to it | Flagged. The flag says enrichment could not be determined for lack of peptides in the IgG, and that no published data link the target to those CAPs. | 4 |

## Secondary methods

At least one successful secondary method, or IP mass spec in its place, "is required" to support a successful Western or IP-Western (p5). These methods check that the bands on the blot are the intended CAP.

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Method 1 (siRNA or shRNA): band reduction | Band(s) on a western blot "reduced by at least 50% of the control signal" | should | 5 |
| Method 1: intended use | Especially blots with multiple bands and unpredicted migration | stated | 5 |
| Method 1: reagent | Sequence, or vendor and catalog number, of the oligonucleotide(s) | should | 5 |
| Method 1: control knockdown | Performed as well | should | 5 |
| Method 1: blot | Cell types labeled. Size markers included. | will; should | 5 |
| Method 1: transfection | A brief protocol description | will | 5 |
| Method 2 (ChIP-seq-validated antibodies) | Antibodies that passed the current ChIP-seq characterization standards are "considered acceptable for use in fRIP if they also pass" part d | acceptable | 5 |
| Method 2: standards cited | The [TF](transcription-factor.md) and [histone and chromatin-associated protein](histone-chromatin.md) standards | stated | 5 |

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

- Special requests cite "Note 3" (p4). The document has no Notes section and no exemption process.
- Mass spec reporting asks which ranked proteins "are TFs" and share "the same TF family" (p3). The pass criteria use CAPs.
- Secondary Method 2 cites "I-A, part d" (p5). The I-A label heads the flowchart. Part d sits under the next heading, "Primary characterization by Western blot or Immunoprecipitation/blot".
- Typos: the part d heading prints "critieria" (p3), and the flag rule ends "CAPa" (p4).
- An empty bullet sits between the second and third zero-peptide rules (p4, visual).
- Part d asks for a band "of appropriate size" with no tolerance (p3). Part a uses "within 20%". The text does not say whether the 20% window applies in part d.
- Part d allows smaller bands and forbids larger ones. Part a requires the major band to be >50% of all bands. The text does not say how the two tests combine.
- The role of the "10% of lysate" comparison is not stated. No quantitative comparison to it is given (p3).
- ChIP-seq-validated antibodies are acceptable "if they also pass" part d (p5). The text does not say whether part a must be repeated.
- After a failed blot, p2 says IP mass spec "is performed". Item b and the flowchart also allow rescue by a secondary method. The text does not say which route applies when.
- Section IB cites "figure 1 above" (p5). The only figure is the unnumbered I-A flowchart.

Against other standards and portal pages:

- The [TF standard](transcription-factor.md) adds a tissue exception and a 2-cell-line rule for new lots. The fRIP new-lot rule has neither.
- fRIP has two secondary methods. It lacks the tagged-protein and motif methods of the TF standard.
- Neither portal guidelines page lists an earlier fRIP standard. The shared thresholds match the TF and [RBP](rna-binding-protein.md) standards: the 20% window, the >50% share, the top 25 rank and knockdown by at least 50% of the control signal.
- The 2-cell-line rule lets an antibody skip characterization "in each tissue type". The [antibody characterization process page](../sources/pages/help__antibody_characterization_process.md) says antibodies other than histone-modification antibodies are "required" to be characterized "in each cell type and species".
- The portal audit "Antibody characterized with exemption" covers a failed primary that a secondary characterization rescued ([audits page](../sources/pages/data-standards__audits.md)). This document treats that rescue as a normal path (item b, p2) and has no exemption process.

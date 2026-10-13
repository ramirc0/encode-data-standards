# Epitope-tagged TF ChIP-seq: January 2017

[Root](../README.md) / [Antibodies](README.md) / Epitope-tagged TF (2017)

Source: [ENCODE Characterization Guidelines for ChIP-seq using Epitope-tagged Transcription Factors](https://www.encodeproject.org/documents/35a9f776-dd6a-44e3-8795-50ead83f34f7/@@download/attachment/Guidelines_for_Use_of_Epitope_Tags_in_ChIP-seq_Jan_2017.pdf), "Approved on Jan 2, 2017", 4 pages. The printed title is "Epitope-tagged transcription factor ChIP-seq". The [experiment guidelines page](../sources/pages/about__experiment-guidelines.md) lists it as current under "Experiment Guidelines". The 2019 version sits under "Antibody Characterization Guidelines". The [January 2017 ChIP-seq experimental guidelines](../dna-binding/chip-seq/experimental-guidelines.md) defer the validation of tagged cell lines to it.

Scope: ChIP-seq of an epitope-tagged "transcription factor, co-factor or chromatin-associated protein of interest" in engineered cell populations, with tags such as "GFP; FLAG-tag, HA-tag, etc.". It sets no depth or replicate thresholds.

Replaces: not stated. Neither epitope-tag document nor the portal guidelines pages say that the [August 2019 guidelines](epitope-tagged-tf.md) supersede this one. The 2019 document supersedes only "the Antibody Characterization Standards of May 2016", for epitope-tagged datasets. It calls itself "Version 2" but does not name version 1. The portal lists both documents as current.

## Design and required evidence

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Engineered population | Each population into which a tag was introduced is characterized for correct tagging and factor expression | stated | 1 |
| Evidence i | The fusion protein is constructed and expressed in the engineered population as designed | stated | 1 |
| Evidence ii | The antibody recognizes the tagged fusion protein | stated | 1 |
| Evidence iii | The antibody gives no significant off-target background signal "that would be confused with true occupancy signals" | stated | 1 |
| Other metrics | Other measures "could be used to substitute" for those ENCODE employs | could | 1 |
| Expression | Similar to the native factor, for example through the native promoter in its genomic context. The document names a BAC transgene and CRISPR/Cas tagging of the endogenous gene. | ideally | 1 |
| Other promoter | Expression is "not necessarily similar" to the endogenous gene, and "this may affect the resulting ChIP-seq map" | may | 1 |
| Tests per TF | One part A test and one part B test | typically | 1 |

## Part A: genomic DNA characterization

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Method | A-1 (PCR) or A-2 (sequencing) | should | 2 |
| A-1 PCR | Primers yield a product only if the tag is integrated correctly. One primer anneals outside the homology-directed repair region. The other sits inside the tag. | stated | 2 |
| A-2 sequencing | Sanger or next-generation sequencing of genomic DNA shows correct integration at the designed site | stated | 2 |

Part A has no reporting or pass rules of its own. Item 4 of the final report covers its evidence.

## Part B: immunocharacterization

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Method | B-1 (immunoblot or IP-Western) or B-2 (IP mass spec). The heading prints "B-1 or B2". | should | 2 |
| Parental cells | The antibody is characterized in each parental target cell population or type, "prior to introduction of the tag", to detect off-target cross-reactivity | stated | 2 |
| Background control | The "wild type" line without a tag integration event, "performed for each parental cell line" | stated | 2 |

### B-1: immunoblot or IP-Western

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Blot antibody | The ChIP-seq antibody | preferred | 2 |
| Alternative | Another antibody raised against the tag, if necessary | can | 2 |
| Band | Band(s) at the predicted migration of the tagged protein, visible when the tagged line is compared with the "wild type" line | should | 2 |
| Negative control | The parental "wild type" line, lacking the tag, in each western or IP-Western | stated | 2 |
| Major band size | Within 20% of the size predicted by the size of the coding region | acceptable | 2 |
| Major band share | >50% of all bands on the gel. Antibody bands are excluded for an IP. | acceptable | 2 |
| Outcome | Both met: the antibody is considered "to meet expectations for the primary characterization" | stated | 2 |
| Size markers | On every immunoblot | must | 2 |
| Evidence | Submitted for each cell type or tissue tested | stated | 2 |

The document calls the size and share criteria "Current acceptable parameters".

### B-2: IP mass spec

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| IP | Cell or nuclear extract from tagged cells, immunoprecipitated with the ChIP-seq antibody, then fractionated on a denaturing polyacrylamide gel | stated | 2-3 |
| Lot | The same antibody lot as the reported ChIP-seq experiments | should | 2 |
| Report: gel | IP-Western gel image outlining the slices submitted for mass spec | stated | 3 |
| Gel waiver | Not required if the entire IP is used for mass spec, "but would be informative additional information if available" | not required | 3 |
| Report: peptides | All peptides, with peptide counts, from all immunoreactive bands | stated | 3 |
| Report: enrichment | Fold enrichment of all peptides against a mock IP, or against proteins immunoprecipitated from the same cell type with other antibodies from the same host species | stated | 3 |
| Report: contaminant set | The list of proteins used as the IP contaminant set | must | 3 |
| Report: TFs above the target | Which proteins ranked above the target (by fold enrichment) are TFs, and which of those share its TF family | stated | 3 |
| Enrichment | Target enriched against the mock IP or the contaminant set | should | 3 |
| Rank | In the top 25 ranked proteins and the top most-enriched TF (by fold enrichment) in the immunoreactive band | should | 3 |
| Rank exception | Higher-ranked TFs are allowed if they are known partners of the target and/or of a higher-ranked TF that is itself a known partner | stated | 3 |
| Interaction evidence | Publications or interaction databases such as BioGRID, among other sources | can | 3 |
| Family rank | Top-ranked member of its TF family. A publication showing that a higher-ranked member dimerizes with the target allows an exception. | should | 3 |

The pass criteria sit under "IP mass spec requirements to be considered fully validated for ENCODE data".

If the target has 0 peptides in the mock IP, ranking by enrichment "cannot be performed". These rules apply instead.

| Case | Outcome | Page |
|---|---|---|
| Target is the top TF by number of detected peptides | Passes | 3 |
| Target is not the top TF, but the TFs with more counts are documented in the same complex and/or interact directly with it | Passes | 3 |
| Target is not the top TF, but the non-target TFs with more peptides were detected by mass spec with two different antibodies to the target | Passes. The other TFs are assumed to be bona fide partners not yet in the literature. | 3 |
| Target is not the top TF, and the TFs with more counts were never linked to it | Flagged. The flag says enrichment could not be determined for lack of peptides in the IgG, and that no published data link the target to those TFs. | 3 |

## Final characterization report

Each epitope-tag ChIP-seq experiment gets this report (p4).

| Item | Content | ENCODE wording | Page |
|---|---|---|---|
| 1. Tag and target | The tag, the target TF, the general tag location "(e.g., amino terminal, carboxy terminal or internal in the protein)" and the tagged cell line | stated | 4 |
| 2. Integration | The integration method, stating "single clone isolation or a polyclonal pool" | stated ("Indicate specifically") | 4 |
| 3. Antibody | Its identity, "including company, catalog number and lot number" | stated | 4 |
| 4. Genomic evidence | PCR gel image (or equivalent) with the expected-size band and the primer sequences, or sequencing data that explain the integration region | stated | 4 |
| 5. Immuno evidence | Western or IP-Western image with both the "wild type" and the tagged line, or a mass spec report of fold enrichment in the tagged line against the "wild type" line | stated | 4 |
| 6. Parental-line ChIP | Peak calling with this experiment's antibody as the ChIP antibody in the parental, non-tagged line | stated | 4 |
| 6. Frequency | For every unique "parental cell line/antibody/antibody lot combination" | should | 4 |

## Exceptions

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Scope | "in rare cases", antibodies or tagged factor lines that fail the standards, when the producers feel the data should be available | stated | 4 |
| Review | "The antibody characterization review committee of the DCC, along with the Production PIs, will consider each special request" | will | 4 |
| Exempt antibodies | Datasets using these "[exempt](../GLOSSARY.md#antibody-characterization-status)" antibodies "will be flagged in the ENCODE datasets" | will | 4 |

The portal records each review result as a [characterization status](../GLOSSARY.md#antibody-characterization-status). Of the status names, this document uses only "exempt".

## Conflicts and gaps

Within the document:

- The part B heading prints "B-1 or B2" (p2). The methods are titled B-1 and B-2.
- The overview says one part A and one part B test is "Typically" used (p1). The part headings say the tests "should be performed" (p2).
- Report item 5 asks for mass spec fold enrichment in the tagged line against the "wild type" line (p4). B-2 measures enrichment against a mock IP or a same-host-species IP set (p3).
- The zero-peptide rules use "mock IP", but the flag explanation cites "the IgG" (p3). The document does not say they are the same control.
- B-1 does not say whether the predicted size includes the tag. ">50% of all bands" does not say whether the share counts signal or bands.
- B-1 only prefers the ChIP antibody and allows another anti-tag antibody. B-2 asks for the same lot.
- B-1 calls a passing blot "the primary characterization" (p2). The document defines only parts A and B. It has no primary or secondary tiers.
- Report item 6 (parental-line peak calling) has no pass or fail criterion.
- Page 3 shows a red bullet and two change bars beside the two-antibody zero-peptide rule (visual). It looks like an unaccepted tracked change in the approved PDF.
- Exceptions cover "antibodies or tagged factor lines" (p4). The flagging sentence names only "exempt" antibodies.

Against other portal pages:

- The [ENCODE4 TF ChIP-seq page](../dna-binding/chip-seq/transcription-factor/encode4.md) requires antibodies characterized to the May 2016 or the August 2019 standard. It reaches this document only through its general link to the experiment guidelines page.

Against the [August 2019 guidelines](epitope-tagged-tf.md):

- Supersession: 2019 states that it supersedes the May 2016 TF standard for tagged datasets. This document makes no supersession statement.
- Part A: this document's only part A evidence is report item 4. 2019 adds a DNA sizing ladder, a wild-type negative control "if available", thermocycling conditions and results from both replicates. It also grants a passing grade through [IDR](../GLOSSARY.md#idr) when only one replicate passes.
- B-1: here the major band sits within 20% and is >50% of all bands ("acceptable"). 2019 keeps only the 20% window, as a "must", and adds a fallback to native antibodies when sizes do not match.
- Wild-type control: here it runs "in each western/IP-western experiment". 2019 asks for it "at least once for each parental cell line that is used".
- B-2 rank: here the target ranks in the top 25 as the top most-enriched TF, and a TF-family rule applies. 2019 asks for the top 20 and wants the top TF only "Ideally". It has no family rule.
- Zero-peptide mock IP: here three pass routes and a flag. 2019 keeps two routes and assigns "an audit".
- The six-item final report and the parental-line peak calling are absent from 2019.
- Exceptions: here "in rare cases", reviewed by the DCC committee "along with the Production PIs". 2019 says "in some cases" and names "the ENCODE Consortium" committee. It also lists example evidence.

Against other versions:

- B-1 and B-2 reuse the wording and thresholds of the [May 2016 TF standard](transcription-factor.md): the 20% window, the >50% share, the top 25 rank and the zero-peptide routes. The gel-image waiver for an entire IP is new here.
- The 2010 standards and Landt et al. 2012 ([ENCODE2](encode2.md#epitope-tagged-factors)) treat a tagged protein as a secondary method, analyzed like multiple antibodies. Landt et al. also need expression data when a heterologous promoter drives the tagged protein. Here tagging has its own two-part check, and a different promoter earns only a caveat.

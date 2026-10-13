# Epitope-tagged TF ChIP-seq: August 2019

[Root](../README.md) / [Antibodies](README.md) / Epitope-tagged TF (2019)

Source: [Antibody and Genomic Characterization Guidelines for Epitope-tagged Transcription Factor ChIP-seq Experiments](https://www.encodeproject.org/documents/04fe5259-b1a7-4649-9b59-0becba9ff659/@@download/attachment/20190213%20Epitope-tagged%20TF%20ChIP-seq-2.pdf), "Version 2, Approved on August 21, 2019", 5 pages. The [experiment guidelines page](../sources/pages/about__experiment-guidelines.md) lists it as current, first under "Antibody Characterization Guidelines".

Scope: ChIP-seq of an epitope-tagged "transcription factor, co-factor, or chromatin associated protein of interest" in engineered cell populations, with tags such as "GFP-tag; FLAG-tag, HA-tag, etc.". Part A checks the tag in genomic DNA. Part B checks the antibody.

Replaces: "concerning epitope tagged datasets", the [May 2016 TF standard](transcription-factor.md). The document still refers readers to that standard for TF-specific antibodies. "Version 2" implies an earlier version, which the document does not name. It does not cite the [January 2017 epitope-tag guidelines](epitope-tagged-tf-2017.md).

## Design and required evidence

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Engineered population | Each population with an introduced tag is characterized for correct tagging and factor expression | stated | 1 |
| Evidence i | The fusion protein is constructed and expressed in the engineered population as designed | stated | 1 |
| Evidence ii | The antibody recognizes the tagged fusion protein | stated | 1 |
| Evidence iii | The antibody gives no significant off-target background signal "that would be confused with true occupancy signals" | stated | 1 |
| Other metrics | Other measures "could be used to substitute" for those ENCODE employs | could | 1 |
| Expression | Similar to the native factor, for example through the native promoter in its genomic context | ideally | 1-2 |
| Tagging route | Most often CRISPR/Cas editing of the endogenous gene. Alternatives are a tagged gene transferred in a BAC, or a transfected construct under another promoter. | stated | 2 |
| Other promoter | Expression is "not necessarily similar" to the endogenous gene, and "this may affect the resulting ChIP-seq map" | may | 2 |
| Tests per TF | One part A test and one part B test | typically | 2 |

## Part A: genomic DNA characterization

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Method | A-1 (PCR) or A-2 (sequencing) | should | 2 |
| A-1 PCR | Primers yield a product only if the tag is integrated correctly. One primer anneals outside the homology-directed repair region. The other sits inside the tag. | stated | 2 |
| A-2 sequencing | Sanger or next-generation sequencing of genomic DNA shows correct integration at the designed site | stated | 2 |
| Report: PCR gel | Gel image of the PCR products with a DNA sizing ladder | stated | 3 |
| Report: negative control | Amplification from wild-type DNA, "if available" | should | 3 |
| Report: PCR details | The expected size, with the primer sequences and thermocycling conditions | should | 3 |
| Report: sequencing | Sanger trace or genome browser screenshot marking the integration region in wild-type genomic DNA | stated | 3 |
| Replicates | Results from both replicates | ideally; should | 3 |
| One replicate present or passing | A passing grade "can be assigned if both replicates passed IDR from ChIP-seq". See [IDR](../GLOSSARY.md#idr). | can | 3 |

The replicate rules sit under "Genomic Characterization requirements to be considered fully validated for ENCODE data".

## Part B: immunocharacterization

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Method | B-1 (immunoblot or IP-Western) or B-2 (IP mass spec). The heading prints "B-1 or B2". | should | 3 |
| Parental cells | The antibody is characterized in each parental target cell population or type, "prior to introduction of the tag", to detect off-target cross-reactivity | stated | 3 |

### B-1: immunoblot or IP-Western

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Blot antibody | The ChIP-seq antibody | preferred | 3 |
| Alternative | Another antibody raised against the tag, if necessary | can | 3 |
| Band | Band(s) at the predicted migration of the tagged protein, visible when the tagged line is compared with the "wild-type" line | should | 3 |
| Background control | The "wild type" line without a tag integration event, run "at least once for each parental cell line that is used" | stated | 3 |
| Report: image | Blot or gel showing the antibody's affinity for the tagged protein, from lysates or from IP proteins | stated | 3 |
| Report: method | A protein sizing ladder, plus the blotting method and immunostaining conditions | should | 3 |
| Report: IP blots | The antibodies used for IP and for visualization | should | 3 |
| Report: bands | Expected size of the tagged protein, plus other bands that may be degradation products or post-translational modifications | should | 3-4 |
| Band size | "The protein band of interest must be within 20% of the size predicted by the coding region" | must | 4 |
| Outcome | Met: the engineered cell line is considered "to meet expectations" | stated | 4 |
| Sizes do not match expected sizes, which "include the tag" | Western blots with native antibodies from commercial vendors "can be used for compliance if the sizes are equivalent" | can | 4 |
| Modifications and degradation products | All instances "thoroughly explained" in the captions | must | 4 |

### B-2: IP mass spec

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| IP | Cell or nuclear extract from tagged cells, immunoprecipitated with the ChIP-seq antibody, then fractionated on a denaturing polyacrylamide gel | stated | 4 |
| Lot | The same antibody lot as the reported ChIP-seq experiments | should | 4 |
| Report: gel | IP-Western gel image outlining the slices submitted for mass spec | should | 4 |
| Gel waiver | Not required if the entire IP went to mass spec | not required | 4 |
| Report: peptides | All peptides, with peptide counts, from all immunoreactive bands, in a table | should | 4 |
| Report: enrichment | Fold enrichment of all peptides against a mock IP, or against proteins immunoprecipitated from the same cell type with other antibodies from the same host species | should | 4 |
| Report: contaminant set | The list of proteins used as the IP contaminant set | must | 4 |
| Rank | Target "enriched within the top 20 ranked proteins" against the mock IP or the contaminant set | should | 4 |
| Top TF | The target is the highest-ranking TF | ideally | 4 |
| Target not the top TF | The lab indicates co-immunoprecipitated complexes or partners (if known), or provides "an appropriate audit if the ChIP-seq data is deemed of high quality" | should | 4 |

The pass criteria sit under "IP mass spec requirements to be considered fully validated for ENCODE data".

If the target has 0 peptides in the mock IP, ranking by enrichment "cannot be performed". These criteria "are considered for validation" instead.

| Case | Outcome | Page |
|---|---|---|
| Target is the top TF by number of detected peptides | Meets a validation criterion | 4 |
| Target is not the top TF, but is documented in a complex or interacting with the TFs with more counts | Meets a validation criterion | 4-5 |
| Target is not the top TF, and no interactions with the TFs with more counts are documented | "an audit is assigned". It explains that enrichment could not be determined for lack of peptides in the IgG control, and that no published data link the target to those TFs. | 5 |

## Exceptions

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Scope | Antibodies or tagged factor lines that fail the standards, when the producers feel the data should be available | stated | 5 |
| Example evidence | The same tagging reagents passed in another cell type | stated | 5 |
| Example evidence | High peak overlap with an antibody-based dataset in the same cell type | stated | 5 |
| Example evidence | A motif highly similar to one published for the factor | stated | 5 |
| Review | "The antibody characterization review committee of the ENCODE Consortium will consider each special request" | will | 5 |
| Exempt antibodies | Datasets using these "[exempt](../GLOSSARY.md#antibody-characterization-status)" antibodies "will be flagged in the ENCODE datasets" | will | 5 |

The portal records each review result as a [characterization status](../GLOSSARY.md#antibody-characterization-status). Of the status names, this document uses only "exempt".

## Conflicts and gaps

Within the document:

- The part B heading prints "B-1 or B2" (p3). The body prints "B-1 or B-2".
- Parts A and B "should be performed", and one of each is "Typically" used (p2). The Exceptions section speaks of a dataset that "has not passed both A and B standards" (p5), which implies both are required.
- Immunocharacterization runs "prior to introduction of the tag" (p3). The B-1 test compares the tagged line with the wild-type line.
- The 20% window uses "the size predicted by the coding region" (p4). The next sentence says expected sizes "include the tag". The text does not say whether the predicted size includes the tag and linker.
- The genomic rescue needs "both replicates passed IDR from ChIP-seq" (p3). This document defines no IDR thresholds.
- A lab may "provide an appropriate audit if the ChIP-seq data is deemed of high quality" (p4). The text does not say who judges or how. It does not define "audit" either.
- The title says "Transcription Factor". The text also covers a "co-factor, or chromatin associated protein" (p1).
- Neither epitope-tag document nor the portal guidelines pages say that this version supersedes the [January 2017 guidelines](epitope-tagged-tf-2017.md). The portal lists both as current.

Against the [May 2016 TF standard](transcription-factor.md):

- Blot: the TF standard needs the major band within 20% and >50% of all bands. B-1 keeps the 20% window, now as a "must", and drops the >50% share.
- Mass spec rank: the TF standard asks for "the top 25 ranked proteins and the top most-enriched TF" plus a TF-family rank. Here the target "should be enriched within the top 20 ranked proteins", and top TF is only "Ideally". No family rule appears. The [August 2015 standard](encode3-2015.md) also used top 20.
- Zero-peptide mock IP: the TF standard has three pass routes and a flag. This document keeps two routes and drops the two-antibody route. It assigns "an audit" instead of a flag.
- Lots: the TF standard has new-cell-type and new-lot rules. This document has neither. It asks that IP mass spec use the ChIP-seq lot and that the wild-type control run at least once per parental cell line.
- The TF standard always lists the IP-Western gel image. This document waives it when the entire IP went to mass spec.
- Exceptions: the TF standard sends them to the review committee "together with the ENCODE Production PIs". This document names "The antibody characterization review committee of the ENCODE Consortium" and gives example evidence.
- Motif: the TF standard has a formal test (accept probability greater than 0.6). Here "a highly similar motif" is only exception evidence, with no threshold.
- From [February 2014](encode3-2014.md) to the TF standard, tagged ChIP-seq serves only as a secondary comparator for untagged antibodies. Here it has a standard of its own, with genomic checks in part A.

Against the [January 2017 guidelines](epitope-tagged-tf-2017.md) (details in that leaf):

- Part A gains reporting rules (sizing ladder, wild-type negative control, thermocycling conditions, trace or browser screenshot) and the both-replicates rule with its IDR rescue.
- B-1 drops the >50% band share. Size markers go from a "must" to a "should" for a protein sizing ladder. The wild-type control moves from "each western/IP-western experiment" to "at least once for each parental cell line".
- B-2 moves from top 25 to top 20 and drops the TF-family rule and the BioGRID clause. Its report no longer lists the TFs ranked above the target. The zero-peptide flag becomes "an audit".
- The six-item final report is gone, including peak calling in the parental line for each "parental cell line/antibody/antibody lot combination".
- Exceptions move from "the DCC, along with the Production PIs" to "the ENCODE Consortium".

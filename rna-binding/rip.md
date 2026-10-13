# RIP: RIP Standards v2.0

[Root](../README.md) / [RNA binding](README.md) / RIP

Source: [RIP Standards v2.0 (Jan 2012)](https://www.encodeproject.org/documents/35d6260b-bb08-442d-803b-e43879150e34/@@download/attachment/RIP_Standards_v2_2012_Jan.pdf), 4 pages. The printed title is "ENCODE and modENCODE Guidelines For Experiments Generating Data using RNA-Binding Proteins (RBPs): ENCODE and modENCODE Standards for RIP-Chip and RIP-Seq Experiments", "Version 2.0, 9 January 2012". Page 3 is an image of the antibody validation form. The [previous guidelines page](../sources/pages/about__experiment-guidelines__experiment-guidelines-previous.md) lists it under "Other Assay".

RIP appears only in ENCODE2-era documents. No current guidelines or standards page covers RIP-Chip, RIP-T-Chip or RIP-Seq. The [current guidelines page](../sources/pages/about__experiment-guidelines.md) does list a November 2016 standard for antibodies used in fRIP assays ([fRIP antibodies](../antibodies/frip.md)).

Scope: RNA immunoprecipitation of RNA-binding proteins (RBPs), read out on genomic microarrays (RIP-Chip), ENCODE tiled arrays (RIP-T-Chip) or high throughput sequencing (RIP-Seq). The document covers ENCODE and modENCODE.

Section I (cell growth) follows "Guidelines For Experiments Generating Chromatin and Transcription Factor Data, Version 1.0". Its rows are generic. See [cell culture](../general/cell-culture.md).

## Antibody characterization

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Tests | "the following tests are suggested" to ensure specificity | suggested | 1 |
| Characterization data | Made public alongside the dataset. Registered with the DCC before data submission. | should; must | 1 |
| Multiple antibodies | Used when available. A statistically significant overlap of targets is used for characterization. Multiple antibodies are expected to "become the standard for the field". | should; expected | 1 |
| Agreement between two antibodies | "Any reasonable method of correlation", such as r² greater or equal to 0.5, or 80% of the top 40% of one list's targets overlapping the list from the second antibody | can | 1 |
| Multi-gene families | Antibodies directed to regions unique to one family member. Potential cross-reaction noted when reporting data. | should | 2 |
| Lots | Different lots from the same manufacturer need no characterization if they recapitulate previous RIP results "to the standards established for biological replicates" | do not need | 2 |
| Immunoblot | Essentially a single band of the predicted size in RIP material | should | 2 |
| Immunoblot, quantitative | The predicted reactive band composes at least half of the total signal in the lane. Measured by quantitative immunoblot of RIP material from whole cell lysate (for example chemiluminescence or chemifluorescence imaging). | minimum standard | 2 |
| Immunofluorescence | Allowed if immunoblots are unsuccessful. The pattern must conform to expectations (the example is nuclear staining for a chromatin protein or TF). | may; must | 2 |
| "RIP" quality | The RIP-IP Western reacts with "preferably one prominent band" of the appropriate molecular weight. Multiple bands from isoform, phosphorylation or glycosylation differences "are to be expected". | should; preferably | 2 |
| Other activity | None except the immunoglobulin heavy and light chain. The negative control Ab or beads-alone IP is negative. | should | 2 |
| Extra bands | The target band is at least 2-times the intensity of any other band | should | 2 |
| Characterization documents | Required for complete data submission, for antibodies to RBPs and to epitope-tagged RBPs | required | 2 |
| Registration, effective March 1, 2011 | New antibodies registered with the DCC include a complete characterization PDF (template on p3). New data submissions with antibodies include the registered antibody information "or they will not be accepted". | must | 2 |
| Validation form | The "ENCODE DCC Antibody Validation Document". It asks for the submitter, antibody and target, source with catalog and lot numbers, target and host species, purification, clonality, vendor URL and references. It holds two validation methods with analysis images, plus histone-modification fields. | stated | 3 |

## Epitope-tagged RBPs

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Use | RIP in cell lines expressing epitope-tagged RBPs | may | 2 |
| Anti-tag antibody | Characterized in the same manner as antibodies to RBPs | should | 2 |
| Monitoring | Western blotting and/or immunofluorescence for the expression level of the tagged RBP. Western blotting for the efficiency and specificity of the RIP. | should | 2 |

## Replicates and reproducibility

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| [Biological replicates](../GLOSSARY.md#biological-replicate) | At least 2, as outlined in the "mod/ENCODE Data Verification Standards" | should | 4 |
| Recommended number | Three for RIP-Chip and RIP-T-Chip. Two for RIP-Seq. | recommended | 4 |
| Correlation | A "significant correlation coefficient" on the top targets. No value or test. | should | 4 |
| Overlap | 80% of the top 40% of the targets of one list overlap the second list | should | 4 |
| Release | Verified data go to public databases under the ENCODE/modENCODE Data Release Policy | should | 4 |

## Validation and specificity

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Alternate platform | Northern blot of individual transcripts after RIP, to show specificity against control transcripts not associated with the factor | can | 4 |
| Positive predictive value | TP/(TP+FP), estimated by comparing RIP-Chip or RIP-Seq results with other data sources. Literature results "are not necessarily accurate". | may | 4 |
| False positive rate | Comparisons with expectations, such as known RNA-binding sites or motifs, give a "(potentially biased)" rate | can | 4 |

Alternate detection methods "do not test the biological validity of the results" (p4).

## Conflicts and gaps

- Cell growth defers to a document not included here. "(see metadata standards)" points to a section the document lacks.
- The antibody section opens with "the following tests are suggested". Later items use "minimum standard" and "must".
- Four band rules overlap: "essentially a single band", "preferably one prominent band", at least half of the lane signal, and at least 2-times any other band. The document does not rank them.
- "80% of the top 40%" is an overlap measure, offered under "Any reasonable method of correlation". Neither use says how targets are ranked.
- The replicate rule asks for a "significant correlation coefficient" without a value or a test.
- The immunofluorescence example names chromatin proteins and TFs, not RBPs. The p3 form carries histone-modification fields.
- The document is dated 9 January 2012. Its registration rule takes effect March 1, 2011 and cites a March meeting with no year.
- The document sets no sequencing depth or read length. It names no array platform, and no input or IgG control for the RNA readout.
- Band share against later RBP documents: at least half of the lane signal here, at least 50% of the blot signal in [eCLIP (2017)](eclip/experimental-guidelines.md), > 50% of all bands on the gel in the [RBP antibody standard (November 2016)](../antibodies/rna-binding-protein.md). The 2-times rule appears only here.
- Immunofluorescence: accepted here when immunoblots fail. eCLIP lists it only among additional controls that "cannot replace" its criteria. The 2016 standard does not mention it.
- Lots: here same-manufacturer lots that recapitulate prior RIP results need no characterization. eCLIP characterizes each new lot as a new antibody. The 2016 standard repeats a primary method for each new lot.
- Multiple antibodies: only this document asks for them.
- Replicates: here at least 2 biological replicates, with three recommended for RIP-Chip and RIP-T-Chip. eCLIP requires at least two biosamples ("must") and asks for [IDR](../GLOSSARY.md#idr) ratios below two ("should").
- Controls: here a negative control Ab or beads-alone IP. eCLIP uses a size-matched input. The 2016 standard runs a control IgG precipitation on the same gel for IP-westerns.

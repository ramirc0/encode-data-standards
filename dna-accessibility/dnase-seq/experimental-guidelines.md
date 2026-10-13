# DNase-seq: experimental guidelines

[Root](../../README.md) / [DNA accessibility](../README.md) / [DNase-seq](README.md) / Experimental guidelines

Source: [ENCODE Experimental Guidelines for ENCODE3 DNase-seq (January 2017)](https://www.encodeproject.org/documents/a549ac0a-c991-4f78-a0ba-36c81f232aed/@@download/attachment/DNase_experimental_guidelines_Jan2017.pdf), 2 pages. The printed title is "DNase-seq Data Standards", dated January 2017. The current [experiment guidelines index](../../sources/pages/about__experiment-guidelines.md) lists it. The [ENCODE3](encode3.md) and [ENCODE4](encode4.md) standards pages link to that index. Page numbers below are PDF pages.

Scope: DNase-seq on human samples (GRCh38) and mouse samples (mm10). The replicate rules name cell lines and primary cell or tissue samples. The document has no cell culture section. Culture rules from other documents are in [cell culture](../../general/cell-culture.md).

## Design and replicates

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| [Biological replicates](../../GLOSSARY.md#biological-replicate) | At least two, independently derived, of the same cell/tissue type/state | should | 1 |
| Replicate type | [Isogenic](../../GLOSSARY.md#isogenic-replicate) (cell lines, or primary cells from the same individual) or [anisogenic](../../GLOSSARY.md#anisogenic-replicate) (same cell/tissue type/state from a different donor) | may | 1 |
| Second replicate | Waived "In cases of anisogenic datasets": matched primary samples cannot be obtained because of limited availability, or primary sample quality prevents high-quality data | may be waived | 1 |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must | 2 |

## Sequencing and read processing

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Read length | 36 bp minimum | should | 1 |
| Adapter trimming | Recommended. Untrimmed fragments shorter than the cycle number can lose small-fragment signal and bias alignments. | recommended | 1 |
| Trimmed read length | No minimum, but effective fragment mapping "drops significantly" at k-mer lengths of less than 22 bp | stated | 1 |
| Adapter sequences | Documented and available to the pipeline | should | 1 |
| Barcodes and UMIs | Indicated in the metadata and available to the pipeline for duplicate filtering | should | 1 |
| Run type | Paired- or single-end, if the type is specified and read pairs are indicated. Paired-end is preferred. | may; preferred | 1 |
| Platform | Indicated | must | 1 |
| Assembly | GRCh38 for human, mm10 for mouse | stated | 1 |

## Library QC metrics

Quality metrics "should report" each proportion below.

| Metric | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Duplicate reads | No more than 5% | should | 1 |
| Mitochondrial reads | No more than 10% | should | 1 |
| Uniquely mapping reads, excluding mitochondrial reads | > 80% optimally, "in no case less than 75%" | should optimally; in no case less than | 1 |
| Library complexity | General complexity measures are "less informative" because DNase-seq produces stereotypical fragments. Acceptable duplication per library protocol is deferred to "the DNase-seq data standards page". | stated | 2 |

## SPOT

| Rule | Threshold | ENCODE wording | Page |
|---|---|---|---|
| [SPOT](../../GLOSSARY.md#spot) score | Calculated for all samples and provided as primary metadata | must | 1 |
| SPOT input depth | At least 20 million [uniquely mapping reads](../../GLOSSARY.md#read-depth-units) | should | 1 |
| SPOT input duplicates | De-duplicated data, or duplicate rates less than 5% | should | 1-2 |
| Replacement | Any sample with SPOT < 0.3 is targeted for replacement with a higher quality sample, "whenever possible" | should | 2 |
| Footprinting | Samples with SPOT < 0.3 are "generally not suitable" for comprehensive footprint detection, regardless of depth | stated | 2 |

Quality tiers (p2):

| SPOT | Quality | Use | ENCODE wording |
|---|---|---|---|
| 0.4 or higher | "high-quality reference data" | | stated |
| 0.3-0.4 | Intermediate | When primary material is limiting, and/or better data cannot be obtained from a primary tissue | acceptable |
| "0.25-3" (as printed) | Lower | Same conditions | acceptable |
| < 0.25 | "unacceptably low" | Released, with cautions, only for the most difficult to procure primary tissues with no other data | may ... only |

## Read depth

Uniquely mapping reads (p2).

| Purpose | Uniquely mapping reads | ENCODE wording |
|---|---|---|
| Comprehensive DHS delineation in high quality samples | ~50 million | target |
| DHS delineation | 20 million | minimum acceptable |
| Comprehensive DHS delineation in high quality samples (a second bullet) | 150-200 million | target |
| DNase I footprints | 100 million | minimum acceptable |

## Replicate concordance

| Replicate pair | Gene-level [Pearson correlation](../../GLOSSARY.md#pearson-correlation) | ENCODE wording | Page |
|---|---|---|---|
| Isogenic | > 0.9 | should | 2 |
| Anisogenic | > 0.85 | should | 2 |

## Conflicts and gaps

- Two bullets set the "target depth for comprehensive delineation of DNase I hypersensitive sites (DHSs) in high quality DNase-seq samples". One says ~50 million and the other 150-200 million. The second sits just before the footprint minimum. The document does not say which applies.
- The lower SPOT tier is printed "0.25-3". The next tier (0.3-0.4) and the < 0.3 replacement rule point to 0.3.
- Tier edges overlap. A score of 0.4 fits "0.4 or higher" and "0.3-0.4". A score of 0.3 fits "0.3-0.4" and "0.25-3".
- Scores from 0.25 to below 0.3 are "acceptable" under conditions. The same samples "should be targeted for replacement".
- The duplicate limits split at 5%. Libraries may hold "no more than 5%" duplicates. SPOT needs duplicate rates "less than 5%" or de-duplicated data.
- Uniquely mapping fractions from 75% to 80% clear the floor but miss the optimum. That band has no label.
- The document does not define the "gene-level" DNase-seq signal behind the Pearson correlation.
- The waiver opens with "In cases of anisogenic datasets" and then describes limited primary samples. It is unclear whether it covers all anisogenic datasets.
- The 36 bp minimum sits next to "no post trimming read length minimum". It appears to apply before trimming. The document does not say so.
- The depth rules do not say whether they count per replicate.
- The document requires no input or other control.
- Two sections are numbered VI.

Against the [ENCODE4 page](encode4.md) ([snapshot](../../sources/pages/data-standards__dnase-seq-encode4.md)). The [ENCODE3 page](encode3.md) has the same values.

- SPOT tiers. The PDF has four tiers and calls "0.25-3" lower quality but acceptable under conditions. The page table has no row for 0.25 - 0.3. Its footnote calls that range "minimally acceptable in certain circumstances". Both target SPOT < 0.3 for replacement.
- SPOT below 0.25. The PDF releases such data only for "the most difficult to procure primary tissues". The page lets "lower scoring data" be used "In very rare cases of limited sample availability".
- Duplicates. The PDF caps libraries at "no more than 5%" duplicate reads. The page keeps only the SPOT input rule (duplicate rates "<5%"). Neither snapshotted portal page gives the per-protocol duplication levels that the PDF defers to.
- Mitochondrial fraction. The PDF sets "no more than 10%". The page calls < 10% Good and 10 - 15% Acceptable. A fraction above 10% fails the PDF but can be Acceptable on the page.
- Uniquely mapping fraction. The PDF wants > 80% and accepts no less than 75%. The page grades "Mappability (without mitochondrial fraction)" as Good above 75% and Acceptable at 65 - 75%. Its Good line sits at the PDF floor. It accepts 65 - 75%, which the PDF rules out.
- Depth. Both set 20 million uniquely mapping reads for SPOT and 100 million for footprints. The PDF also makes 20 million the DHS minimum. Its ~50 million DHS target becomes 50 million "recommended" for "a standard conventional DNase-seq profile". The page ties 150-200 million to "deep, footprinting depth DNase-seq" and counts "uniquely mapping paired-end reads".
- Read length. Both set "a minimum of 36 base pairs" with the same trimming notes. The page lists them as pipeline restrictions.
- Replicates. The PDF waiver covers anisogenic or limited primary samples. The page exempts "EN-TEx samples or other rare types". The concordance values match.
- The [portal audits](portal-audits.md) give the flag levels and operators.

# ChIP-seq: experimental guidelines

[Root](../../README.md) / [DNA binding](../README.md) / [ChIP-seq](README.md) / Experimental guidelines

Source: [ENCODE Guidelines for Experiments Generating ChIP-seq Data](https://www.encodeproject.org/documents/ceb172ef-7474-4cd6-bfd2-5e8e6e38592e/@@download/attachment/ChIP-seq_ENCODE3_v3.0.pdf), January 2017, 4 pages. The URL file name says v3.0. The [experiment guidelines page](https://www.encodeproject.org/about/experiment-guidelines/) ([snapshot](../../sources/pages/about__experiment-guidelines.md)) lists it as the current "ENCODE Experimental Guidelines for ENCODE3 ChIP-seq".

Scope: ChIP-seq of DNA-associated proteins such as transcription factors and histone modifications. The document says its standards drew on results from over one thousand experiments in D. melanogaster, C. elegans, mouse and human. It sets no read depth or quality-metric values.

[Cell culture](../../general/cell-culture.md) covers the Section I (p1) rules for common ENCODE cell types and primary cells.

## Antibodies

The document defers antibody details to the standards it cites. It points to the [portal antibody guidelines](https://www.encodeproject.org/about/experiment-guidelines/#antibody) for the most recent versions (p2).

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| TF antibodies | A primary and a secondary characterization for each lot. Details: [TF standard (May 2016)](../../antibodies/transcription-factor.md). | required | 2 |
| Histone antibodies | Commercial antibodies validated by at least two independent methods. New lots analyzed independently. Details: [histone and chromatin-associated protein standard (October 2016)](../../antibodies/histone-chromatin.md). | must | 3 |
| Epitope-tagged TFs | Tagged cell lines or organisms are "a useful alternative", particularly where no ChIP-quality antibody exists against the endogenous protein. Validation of tagged lines is deferred to the [January 2017 epitope-tag guidelines](../../antibodies/epitope-tagged-tf-2017.md). The ENCODE4 TF page cites the later [August 2019 epitope-tagged TF standard](../../antibodies/epitope-tagged-tf.md). | stated | 2-3 |

## Controls

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Control experiments | Performed | must | 3 |
| Input DNA | DNA isolated from cells crosslinked and sonicated under conditions similar to the experimental sample | stated | 3 |
| Environmentally induced binding (e.g., hormone-induced glucocorticoid receptor, inducible promoter) | A parallel ChIP on cells in the uninduced condition | "a potential appropriate control" | 3 |
| Epitope-tagged constructs | Wild-type cells lacking the tag, or input DNA of the tagged cell line | can | 3 |
| Amplified samples | Control DNA prepared with the same amplification procedure | must | 3 |
| Biosample state | A control for each cell line, developmental stage and condition or treatment | need to be performed | 3-4 |

## Replicates

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Number | At least two | must | 4 |
| Type | Duplicate experiments on two independent samples ([biological replicates](../../GLOSSARY.md#biological-replicate)) | recommended | 4 |
| Limited material | Samples "might be exempted". No criteria given. | might be exempted | 4 |

The text bases the duplicate rule on RNA Pol II ChIP-seq. There, more than two replicates did not significantly increase the number of targets identified (p4).

## Deferred to the portal

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Data production standards | [ChIP-seq data standards](https://www.encodeproject.org/data-standards/chip-seq/) on the portal | stated | 3 |
| Read depth | No number. "For current read depth requirements please visit" the same portal page. | stated | 3 |
| Term definitions | Portal [terms page](https://www.encodeproject.org/data-standards/terms) | stated | 3 |

The portal ChIP-seq standards are in [transcription factor](transcription-factor/README.md) and [histone](histone/README.md). Shared terms are in the [glossary](../../GLOSSARY.md).

## Conflicts and gaps

- Two replicates "must" be performed, but the text does not say biological. The biological type is only "recommended". The limited-material exemption gives no criteria.
- The PDF sets no read depth, control depth, library complexity, enrichment or concordance value. It points to live portal pages that carry no version or date.
- Version labels differ. The page prints January 2017. The URL says v3.0, and the PDF metadata title carries 20170308.
- Against the 2011 standards ([ENCODE2](encode2.md)), the controls and replicates text is largely the same. 2017 drops IgG as a control type and drops the 2011 depth figures, such as 10 million uniquely mapped reads per replicate for mammalian TFs. It also drops both replicate tests (mapped reads and targets within two fold, and 80% of the top 40%). It adds input DNA of the tagged line as a tag control, plus the limited-material exemption. ChIP-chip is no longer covered.

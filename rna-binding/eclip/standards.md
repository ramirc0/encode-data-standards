# eCLIP: standards

[Root](../../README.md) / [RNA binding](../README.md) / [eCLIP](README.md) / Standards

Source: [eCLIP Data Standards](https://www.encodeproject.org/eclip/), updated June 2017 ([snapshot](../../sources/pages/eclip.md)). The page titles its section "ENCODE 3 Standards".

Scope: enhanced CLIP to map RNA-binding protein (RBP) binding sites. The Yeo lab (UCSD) developed the method and pipeline.

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Biological replicates | 2 or more, isogenic or anisogenic | should |
| Control | One size-matched input control experiment with matching run type and read length | should |
| Antibody | Characterized to ENCODE standards. The page links the [TF (May 2016)](../../antibodies/transcription-factor.md), [histone and chromatin-associated (October 2016)](../../antibodies/histone-chromatin.md) and [RNA-binding protein (November 2016)](../../antibodies/rna-binding-protein.md) standards. | must |
| Experimental protocol | [Experimental guidelines](experimental-guidelines.md) | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Sequencing

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Read length | 50 bp | must be |
| Run type | Paired-end | must |
| Platform | Indicated | should |
| Replicate matching | Same read length and run type | should |
| Assembly | GRCh38, hg19 or mm10 | stated |
| Annotation | GENCODE V24 (GRCh38), V19 (hg19) or M4 (mm10) | stated |

## Depth, concordance and enrichment

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Depth per biological replicate | 1 million [unique fragments](../../GLOSSARY.md#read-depth-units), or [saturated peak detection](../../GLOSSARY.md#saturated-peak-detection) | should |
| Replicate concordance | Both [IDR](../../GLOSSARY.md#idr) rescue and self-consistency ratios less than 2 to pass | stated |
| [FRiP](../../GLOSSARY.md#frip) over enriched peaks, narrow-binding RBPs | At least 0.005 | should |
| RBPs with non-typical binding | May pass by exemption | may |

Non-typical binding, per the page: binding to rRNA, snRNAs, other repetitive elements or multicopy sequences; broad binding to entire transcripts or transcript regions; or binding to specific RNA families.

## Conflicts and gaps

- The page names no tiers. See [portal audits](portal-audits.md).

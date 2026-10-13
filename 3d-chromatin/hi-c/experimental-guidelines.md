# Hi-C: experimental guidelines

[Root](../../README.md) / [3D chromatin](../README.md) / [Hi-C](README.md) / Experimental guidelines

Source: [ENCODE Experimental Guidelines for ENCODE4 HiC (in situ) v1.0](https://www.encodeproject.org/documents/f3ec6a89-4cde-4b0d-9da4-50d35b7f023b/@@download/attachment/final_in_situ_hi_c_experimental_standards_of_the_encode_consortium.pdf), 3 pages. The printed title is "in situ Hi-C Experimental Standards of the ENCODE Consortium". The only printed date is the page header, 01.21.2018. The PDF prints no version number. The v1.0 label and the January 2018 date come from the [current guidelines page](../../sources/pages/about__experiment-guidelines.md). The [Hi-C standards page](standards.md) links that page for in situ experimental guidelines. Page numbers are PDF pages.

Scope: a wet-lab protocol for in situ Hi-C in mammalian cells, from formaldehyde crosslinking to an Illumina-ready library. It sets no sequencing or data-quality standards.

## Cells and crosslinking

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Cell number | Two to five million mammalian cells | stated | 1 |
| Culture | Recommended conditions, to about 80% confluence | stated | 1 |
| Crosslinking density | 1x10⁶ cells per 1ml fresh medium | stated | 1 |
| Crosslinking | Freshly made formaldehyde to a final 1%, v/v, for 10 minutes at room temperature with mixing | stated | 1 |
| Quench | Glycine to a final 0.2M for 5 minutes at room temperature | stated | 1 |
| Low input | For "fewer than 2x106 cells" (as printed), the AMPure XP size selection "could" run on the final amplicons instead of before biotin pull-down | could | 2 |

## Digestion, shearing and size selection

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Restriction enzyme | 100U MboI (NEB, R0147) in NEBuffer 2, or 100U DpnII (NEB, R0543) in NEBuffer 3.1. Digest "overnight or for at least 2 hours" at 37°C. | stated | 1 |
| Shearing | To 300-500bp. The PDF lists Covaris LE220 settings. | stated | 1-2 |
| Shearing check | A 1:5 dilution on a 2% agarose gel "to verify successful shearing" | stated | 2 |
| Size selection | AMPure XP. "exactly 110μl (0.55X volumes)" leaves fragments shorter than 500bp in the supernatant. "exactly 30μl" of fresh beads then retains 300-500bp. | exactly | 2 |
| Size-selection check | Qubit dsDNA High Sensitivity Assay, and undiluted DNA on a 2% agarose gel "to verify successful size selection" | stated | 2 |

## Library and sequencing

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Index | "Record the sample-index combination." | stated | 3 |
| PCR | 4-12 cycles directly off the T1 beads, with Illumina primers and protocol | stated | 3 |
| Sequencing | Quantified and sequenced on an Illumina platform. No read length, run type or depth is given. | stated | 3 |

## Conflicts and gaps

- The title says "Experimental Standards". The content is a protocol. It states no sequencing depth, read length, [biological replicate](../../GLOSSARY.md#biological-replicate) number or duplicate rate. It states no ligation-junction rate, contact fraction, loop count or map resolution either.
- None of the in situ QC metrics on the [portal Hi-C page](standards.md) appears in this PDF. The portal sets unique total duplicates (40% maximum), unique reads in Hi-C contacts (20% minimum, ideally over 50%), reads with the ligation motif present (15% minimum) and unique reads in long-range contacts (20% minimum, ideally over 35%). For QC tiers, see the [computational guidelines](computational-guidelines.md).
- Step 1 asks for two to five million cells (p1). Step 28 adds a branch for "fewer than 2x106 cells", printed on the baseline (p2). Step 2 prints 1x10⁶ with a superscript (p1). Reading 2x106 as 2x10⁶ is an inference. On that reading, the branch covers inputs below the step 1 range.
- Step 12 allows MboI or DpnII. Step 13 heat-inactivates MboI only ("Incubate at 62°C for 20 minutes to inactivate MboI"). It gives no DpnII step.
- The [ChIA-PET ENCODE4 guidelines](../chia-pet/experimental-guidelines.md) (Table 2) list GM12878 in situ Hi-C (Rao et al., 2014) at 5 million cells per library over 29 libraries. That sits at the top of this protocol's cell range.

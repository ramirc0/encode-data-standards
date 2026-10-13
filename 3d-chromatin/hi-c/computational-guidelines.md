# Hi-C: computational guidelines

[Root](../../README.md) / [3D chromatin](../README.md) / [Hi-C](README.md) / Computational guidelines

Source: [ENCODE4 computational guidelines, in situ HiC (July 2018)](https://www.encodeproject.org/documents/75926e4b-77aa-4959-8ca7-87efcba39d79/@@download/attachment/comp_doc_7july2018_final.pdf), 53 pages. The printed title is "Data Production and Processing Standard of the Hi-C Mapping Center", dated 07.16.2018. The [Hi-C standards page](standards.md) links it as the computational guidelines for in situ Hi-C. Page numbers below are PDF pages.

Scope: library QC, read filtering, contact matrices, normalization and feature calling in the Juicer pipeline. The worked examples are in situ Hi-C (GM12878, MboI). The document does not cover intact Hi-C or genophasing.

## Library QC tiers

Table 2 (p5). Its caption says "Percentages refer to unique read pairs".

| Metric | Fail | Marginal | Pass | Typical |
|---|---|---|---|---|
| Alignable reads | < 75.0% | 75.0-90.0% | > 90.0% | |
| Duplicates | | > 40.0% | < 40.0% | |
| Intra-fragment | > 20.0% | 10.0-20.0% | < 10.0% | |
| Hi-C contacts | < 20.0% | 20.0-50.0% | > 50.0% | |
| Intra short range (< 20 Kb) | > 60.0% | 30.0-60.0% | < 30.0% | |
| Intra long range (≥ 20 Kb) | < 20.0% | 20.0-35.0% | > 35.0% | |
| Ligations | < 5.00% | 5.00-25.0% | > 25.0% | |
| Intra-chromosomal | | | | > 40.0% |
| Inter-chromosomal | | | | < 40.0% |
| Chimeric ambiguous | | | | < 10.0% |
| Chimeric paired | | | | 10.0-30.0% |

## Failure rules in the text

| Rule | Page |
|---|---|
| More than 25% of reads fail to align: "the library is considered to have failed" | 3 |
| Less than 5% of reads carry a ligation junction: "the library is considered a failure" | 3 |
| Removing same-fragment pairs filters out over 20% of read pairs: restriction, fill-in or ligation failed, and the library "is not a good candidate for deeper sequencing" | 3 |
| Duplication below 40% of total sequenced read pairs is "suggested" for deep data sets. Going over 40% "does not constitute library failure". | 3 |
| At least 20% of unique reads are long-range intra-chromosomal contacts (≥ 20 Kb) in successful libraries. Lower values "usually indicate that the experiment has failed". | 4 |
| Six-cutter libraries size-selected to 300-500 bp give most contacts (> 85%) from 3' fragment ends. "A much lower value" means the enzyme did not cut well. | 4 |
| With proximity-ligation chimeras, each read-pair type (left, inner, outer, right) "should" hold roughly 25% of contacts. They converge near 30 Kb for six-cutters and 3 Kb for four-cutters. | 4 |

Typical values: chimeric paired 10-30%, chimeric ambiguous 0-10% (p3). Ligation rates of 30-40% for 300-500 bp inserts with 101 bp paired-end reads (p3).

## Depth and sequencing strategy

| Rule | Wording | Page |
|---|---|---|
| A "loop resolution" map needs at least 2 billion reads per experiment. An experiment can pool several libraries. | "we expect" (text, "total reads"); "must" (Figure 3, "paired end reads") | 2, 5 |
| Screen libraries with 200K-2M reads from a test aliquot before deep sequencing | "often" | 2 |
| A library is a good candidate for deeper sequencing if complexity estimates reach hundreds of millions or billions of unique contacts | stated | 3 |
| Sequence many replicate libraries at lower depth (for example one HiSeq lane, or < 20% of total library complexity) rather than many lanes of one library | "more efficient" | 3 |

Library complexity comes from the Picard formulation of the Lander-Waterman equation. Optical duplicates are excluded from both counts (p3).

## Read filtering

| Step | Rule | Page |
|---|---|---|
| Aligners | Paired-end aligners "should be avoided". bwa aln is "suboptimal" because it returns no chimeric reads. | 10 |
| Multi-position pairs | Read pairs that align to more than two positions are excluded | 10 |
| Chimeric pairs | Unambiguous chimeras (about 15% of pairs) are kept as ligation junctions. Ambiguous chimeras are dropped. | 11 |
| Unalignable pairs | Not used | 11 |
| Duplicates | Both ends on the same chromosome and strand, with 5' ends within 4 bp | 11 |
| Same-fragment pairs | Removed from the final list | 12 |
| Mapping quality | Two contact lists: MAPQ > 0 (a unique best alignment exists) and MAPQ ≥ 30 (at most 1 in 1000 chance of a wrong alignment) | 12 |

## Contact matrices and normalization

| Item | Setting | Page |
|---|---|---|
| Base-pair resolutions | 2.5 Mb, 1 Mb, 500 kb, 250 kb, 100 kb, 50 kb, 25 kb, 10 kb, 5 kb, for each MAPQ list | 12 |
| Fragment resolutions | 500f, 200f, 100f, 50f, 20f, 5f, 2f, 1f | 12 |
| Normalizations | Vanilla coverage (VC), square-root VC and Knight-Ruiz (KR) | 12-13 |
| KR at very high resolution | Drop the sparsest rows (up to 5% of rows) and rerun | 13 |

## Loops (HiCCUPS)

| Rule | Setting | Page |
|---|---|---|
| Neighborhoods | A pixel "must" be enriched relative to all four: lower-left, horizontal, vertical and donut | 19 |
| Significance | 10% FDR, applied within λ-chunks of similar expected count (Benjamini-Hochberg at α = .1 per chunk) | 21-22 |
| Fold enrichment | At least 50% over horizontal and vertical expected; at least 75% over lower-left and donut expected | 22 |
| Fold enrichment | At least 2-fold over the donut or the lower-left expected | 22 |
| Singlets | Drop a peak pixel with no collapsed neighbors when the sum of its four q-values is > .02 | 22 |
| Calling resolutions | 5 kb, 10 kb and 25 kb | 22 |
| Merging | Keep the highest-resolution call. Peaks within 20 kb (50 kb if one is a 25 kb peak) collapse to it. | 22 |
| Orphan 5 kb peaks | Drop peaks between loci > 100 kb apart called at 5 kb only | 22 |
| Minimum loci distance | ≥ 75 kb at 25 kb, ≥ 50 kb at 10 kb, ≥ 35 kb at 5 kb | 20 |
| Peak width p | p = 1 at 25 kb, 2 at 10 kb, 4 at 5 kb (20-25 kb) | 20 |
| Donut width w | Start at 3 (25 kb), 5 (10 kb) or 7 (5 kb). Grow by 1 until the lower-left sum is ≥ 16 reads or w = 20. | 20 |
| Expected loop count | A map of "adequate depth" is expected to contain at least 1000 loops | 23 |

Validation: confirming peaks as real local enrichment and verifying loops by independent means is "essential" (p7). MotifFinder can check loop reliability. In GM12878, 92% of CTCF motif pairs at loop anchors are convergent (p23).

## Aggregate peak analysis (APA)

| Rule | Setting | Page |
|---|---|---|
| Enrichment | z-score above 1.64 (p < .05) | 6 |
| APA score | Above 1 means loop anchors contact each other more than intervening loci | 6 |
| Peak separation t | 300 kb at 10 kb resolution (±100 kb window); 100 kb at 5 kb resolution (±25 kb window) | 6 |
| Input | Intrachromosomal KR-normalized maps | 6 |

## Domains, compartments and anchors

| Feature | Setting | Page |
|---|---|---|
| Arrowhead, first pass | S_variance < 0.2; mean sign(U) < −0.5; mean sign(L) > 0.5 | 18 |
| Arrowhead, second pass | mean sign(U) < −0.4; mean sign(L) > 0.4. Larger blocks may not contain smaller ones. | 18 |
| A/B compartments | First eigenvector of the observed/expected intrachromosomal matrix | 24 |
| Subcompartments | 100 kb interchromosomal matrix, chrX excluded, genome-wide KR, rows or columns with > 30% zero or undefined entries removed. GaussianHMM with k = 5. | 24 |
| MotifFinder | Extend peak loci smaller than 15 kb to 15 kb. Require exactly one CTCF peak present in all replicates, overlapping RAD21 and SMC3 peaks and a good CTCF motif with a positive PWM score. | 23 |
| Diploid maps | Assign alleles from contacts with MAPQ ≥ 10 that overlap a SNP in the first 70 nucleotides of the read | 14 |
| Higher-order contacts | All alignments MAPQ > 10, one chromosome, every locus pair at least 20 kb apart | 14 |

## Metadata to record

| Sample | Items | Page |
|---|---|---|
| Cell lines | Source and lot; unique biological replicate index; culture protocol; culture start, duration and harvest dates; passage number; density, viability and morphology image at harvest; contaminant tests and karyotyping, if done | 8 |
| Cell lines | "Viability, >90%" appears in the harvest list | 8 |
| Tissues | Purification or isolation protocols; amount of starting material | 8 |
| All experiments | Cross-link date and conditions; starting cell number; restriction enzyme; biotinylated base; ligation volume; amplification cycles; Qubit concentration; Kapa qPCR molarity; Bioanalyzer size; sequencer; read lengths; cluster density | 8-9 |

The 3D-DNA genome assembly, Juicebox and file format sections define tool settings rather than data standards. They are left out.

## Conflicts and gaps

- "Long-range" has two definitions: "intrachromosomal and over 20Kb apart, or interchromosomal" (p4) versus intra-chromosomal ≥ 20 Kb (Tables 1 and 2).
- The text calls ≥ 20% long-range contacts successful (p4). Table 2 calls 20.0-35.0% Marginal.
- Table 2 percentages are shares of unique read pairs. The text states alignment and duplication as shares of sequenced reads or read pairs (p3).
- Duplicates at exactly 40.0% fall in no Table 2 tier.
- The depth rule says "total reads" in the text and "paired end reads" in Figure 3.
- The complexity equation is misprinted as R/m = 1 − e^(N/m) (p3).
- The HiCCUPS summary requires 50% enrichment over lower-left (p19). The detailed rule requires 75% (p22).
- No replicate count, reproducibility metric, genome assembly or main aligner is required.
- "Viability, >90%" sits in a list of items to record. The document does not say whether it is a pass threshold.
- Against the [portal Hi-C page](standards.md): Hi-C contact and long-range cut points agree (20%/50% and 20%/35%). Duplicates agree on 40%, but the portal writes ≤ and the PDF writes <. The portal's "≥ 15% reads with ligation motif" does not appear here, where 5% is the fail line and 25% the pass line.

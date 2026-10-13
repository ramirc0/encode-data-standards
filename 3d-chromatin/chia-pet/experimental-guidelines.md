# ChIA-PET: experimental guidelines

[Root](../../README.md) / [3D chromatin](../README.md) / [ChIA-PET](README.md) / Experimental guidelines

Source: [ENCODE Experimental Guidelines for ENCODE4 ChIA-PET v2.0](https://www.encodeproject.org/documents/480f9184-07a5-4e57-bc33-ca6f675a1f97/@@download/attachment/ChIA-PET%20protocol%20for%20ENCODE4_Final.pdf) (July 2017), 23 pages. The printed title is "ChIA-PET Protocol Standards for ENCODE4", from the Ruan Lab at The Jackson Laboratory for Genomic Medicine, dated July 28th, 2017. The PDF prints no version number. The v2.0 label comes from the [current guidelines page](../../sources/pages/about__experiment-guidelines.md). Table 1 calls the long-read protocol "ChIA-PET v2" and the original protocol "ChIA-PET v1". Page numbers are PDF pages.

Scope: a wet-lab protocol for long-read ChIA-PET against a protein factor, from dual crosslinking to HiSeq production, with an outline of data processing. Its examples use CTCF and RNA Polymerase II antibodies in GM12878 cells.

## Biosamples and crosslinking

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Cell sample | "Cell sample of choice". GM12878, HeLa S3, K562 and MCF7 have been used successfully. | stated | 3 |
| Culture | ~80% confluency under recommended conditions | stated | 5 |
| Cell number | ~10⁸ cells per pellet | stated | 5 |
| Crosslinking | Dual. Freshly prepared EGS at a final 1.5mM for 45 minutes, then formaldehyde to a final 1% (vol/vol) for 20 minutes, both at room temperature. | stated | 5 |
| Quench | Glycine to a final 0.2 M for 5 min at room temperature | stated | 5 |

## Antibody and ChIP

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Antibody | Against the protein of interest. Examples are monoclonal anti-RNA Polymerase II (8WG16) and polyclonal anti-CTCF (Abcam, ab70303). | stated | 1 |
| Antibody quality | "High quality antibodies are recommended for immunoprecipitation" (Table 3, low yield of proximity ligated DNA) | recommended | 18 |
| Antibody amount | 60 µg to coat the beads | stated | 6 |
| Lysis | Check cell and nuclear morphology after each lysis step to ensure complete lysis | stated | 6 |
| Sonication | Optimize parameters before shearing. The PDF gives the lab's settings for a Sonics sonicator. | should | 6 |
| Input control | 20 µl of sonicated chromatin, kept as non-enriched input for the ChIP quality check (Box 2) | stated | 6 |
| ChIP DNA for library | "at least 200 - 300 ng of ChIP DNA is required for library preparation" (Table 3) | required | 18 |

## Library construction

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| Linker annealing (Box 1) | Pick the top-to-bottom oligo ratio where "only double stranded bridge-linker is observed with no detectable unannealed top or bottom oligo" on a 4-20% TBE gel | stated | 12 |
| Tagmentation | Two to six reactions (100 - 300 ng proximity ligated DNA) per library | recommended | 9 |
| Tn5 to DNA ratio | The ratio is "critical" and "need to be optimized every time". With too many fragments > 1 kb, add Tn5 or use less DNA (Table 3). | need to | 9, 18 |
| PCR cycles | "Generally, do not perform more than 13 cycles." The program runs 11-13 cycles. Optimal cycles "need to be empirically determined". More cycles lower library complexity. For low complexity, use fewer cycles or more ChIA-PET DNA (Table 3). | do not | 11, 18 |

## QC checkpoints

Each checkpoint is a "CRITICAL STEP" read from a Bioanalyzer trace. The Figure 2b caption describes example profiles and gives other values.

| Checkpoint | Step text | ENCODE wording | Figure 2b caption | Page |
|---|---|---|---|---|
| QC1, ChIP DNA (step 30) | High-sensitivity chip result "usually ... should have a peak around 2~3.5kb". Box 2 measures it by Qubit 2.0 and Bioanalyzer. | should | "peak at ~3.5 kb" | 7, 13, 21 |
| QC2, proximity ligation DNA (step 48) | Quantified on a Qubit 2.0. The trace "should have a peak at ~5 kb". | should | "peak at ~4.3 kb" | 9, 21 |
| QC3, tagmentation (step 56) | The majority of fragments "should be distributed around 200 bp - 1 kb range" | should | "mainly falls between 140 bp to 1 kb with peak at ~200 bp" | 10, 21 |
| QC4, PCR product (step 69) | After AMPure XP clean-up, Box 3 checks quantity by Qubit and size by Agilent assay. The majority of fragments "fall in 200 bp - 1 kb range". | should | "200 to 900 bp" | 11, 14, 21 |
| QC5, final library (step 71) | Blue pippin selects 300 to 600 bp, as in Figure 1. The majority of the library falls in the "300 - 600 bp range". "10 - 30 ng of library DNA should be obtained" by Qubit. | should | "from 320 to 500 bp after size-selection" | 11, 20, 21 |

## Sequencing

| Criterion | Threshold | ENCODE wording | Page |
|---|---|---|---|
| PET length | "up to 2x250 bp" in the summary. Table 1 gives "Up to 2x150 bp". The original protocol gives 2x20 bp. | stated | 1, 16 |
| QC run | Each library is first sequenced on MiSeq with a 300 cycles kit. One run gives approximately 20 million PET reads. The lab routinely pools 2-4 barcoded libraries per run. | will | 11 |
| QC depth | "5-10 million PET reads per library can provide sufficient QC assessment" | usually | 12 |
| QC review | Output statistics (Table 4) and browser-based visual examination | stated | 11-12 |
| Production | "Qualified libraries" go to "Hiseq2500 or Hiseq4000". The equipment list names HiSeq 2500 or NextSeq 500. | will | 3, 12 |
| Saturation | "200 million PET reads were generated from a high-quality ChIA-PET library before hitting saturation" | usually | 12 |
| Dataset size | "~40 million uniquely mapped non-redundant PETs from ~200-300 million raw reads" for a quality library | usually | 14 |

## Expected output (Table 4)

Table 4 (p19) reports one GM12878 CTCF library (LHG0018) at MiSeq QC and HiSeq production depth. Its last column is headed "Range of expected quality data (±20%)".

| Metric | Expected (±20%) | MiSeq QC | HiSeq production |
|---|---|---|---|
| Total PET | 200,000,000 | 21,508,933 | 338,804,565 |
| PET w/ linker | | 13,248,828 | 207,310,687 |
| Mappable PET (>Q30) | | 9,982,456 | 158,200,925 |
| Non-redundant PET (printed "Unequally non-Redundant PET") | 40,000,000 | 8,703,461 | 44,190,806 |
| Redundancy | | 13% | 72% |
| Peak | 50,000 | 37,294 | 81,544 |
| Self-ligation PET (< 8Kb) | 10,000,000 | 1,727,616 | 8,945,849 |
| Inter-ligation PET | 30,000,000 | 6,975,845 | 35,244,957 |
| Intra-chr PET | 10,000,000 | 2,193,679 | 11,040,703 |
| Inter-chr PET | 20,000,000 | 4,782,166 | 24,204,254 |
| Intra-chr PET clusters with PET count ≥10 | >20,000 | | 26,312 |
| Inter-chr PET clusters with PET count ≥10 | <1,000 | | 549 |

The table also lists clusters for PET counts 1 to 9, with no expected values. The MiSeq column pools PET counts ≥5.

The rows nest (derived). In all three columns, self-ligation PET plus inter-ligation PET equals non-redundant PET. Intra-chr PET plus inter-chr PET equals inter-ligation PET.

Ratios printed below the table:

| Ratio | MiSeq QC | HiSeq production |
|---|---|---|
| Intra/inter PET | 0.46 | 0.46 |
| Intra/inter PET singleton | 0.42 | 0.38 |
| Intra/inter PET cluster | 1,425 (PET count ≥5) | 48 (PET count ≥10) |

## Data processing

The PDF outlines ChIA-PET Tool V2.

| Item | Setting | Page |
|---|---|---|
| Software | Cutadapt 1.6, BWA 0.7.12-r1039 or above, SAMtools 0.1.19 and above, Picard tools 1.107 and above, BEDTools 2.17.0 and above, Pysam 0.8.1 | 3-4 |
| Self-ligation PETs | Mapping span < 8 kb. Most come from self-ligation of one DNA fragment. Their pile-ups mark binding peaks. | 14 |
| Inter-ligation PETs | Mapping span > 8 kb on one chromosome (intra-chromosomal), or tags on different chromosomes (inter-chromosomal) | 14 |
| Clusters and singletons | Inter-ligation PETs split by "direct overlaps of PET reads with 500bp extension". Clusters mark enriched interactions. Singletons mark higher-order folding. | 14 |

## Reference values (Tables 1 and 2)

Tables 1 and 2 report GM12878 performance figures. They set no thresholds. Table 1 gives uniquely mapped PETs of 71.2% ± 4.0% for long-read ChIA-PET and 59.1% ± 1.3% for the original protocol (p16). Table 2 (p17) compares CTCF ChIA-PET (Tang et al., 2015) with in situ Hi-C (Rao et al., 2014).

| Item | CTCF ChIA-PET | in situ Hi-C |
|---|---|---|
| Cells per library | 100 million | 5 million |
| Libraries in the final dataset | 2 | 29 |
| Cells in the final dataset | 200 million | 145 million |
| Raw sequencing reads | 0.68 billion | 6.5 billion |
| Non-redundant mapping reads | 51 million | 4.9 billion |
| High confidence loops | 42,297 | 9,448 |

## Conflicts and gaps

- PET length is "up to 2x250 bp" in the summary (p1) and "Up to 2x150 bp" in Table 1 (p16).
- The step text and the Figure 2b caption disagree at all five QC checkpoints. The document does not say whether the caption values are targets or one example.
- Step 72 omits the unit of the MiSeq QC depth ("5- 10 PET reads", p11). The next page gives 5-10 million PET reads per library (p12).
- Production sequencers are "HiSeq 2500 or NextSeq 500" in the equipment list (p3) and "Hiseq2500 or Hiseq4000" in step 73 (p12).
- "Qualified libraries" move on to production (p12). Table 4 gives no expected values for MiSeq QC. This gate has no stated pass criterion.
- Table 4 prints "Unequally non-Redundant PET". The text says "uniquely mapped non-redundant PETs" (p14).
- The ±20% column also holds entries with their own operators (>20,000 and <1,000). The document does not say whether ±20% applies to them. Nor does it say whether an expected value is a minimum or a ±20% band. Read as a band, Total PET spans 160,000,000 to 240,000,000 (derived).
- The HiSeq example exceeds the derived +20% bound for Total PET (338,804,565 vs 240,000,000) and Peak (81,544 vs 60,000). It also exceeds it for Inter-chr PET (24,204,254 vs 24,000,000). The document does not say whether exceeding a value fails.
- The expected values sit beside one CTCF library. The document does not say whether they apply to other targets, such as RNA Polymerase II.
- PET w/ linker is undefined. "Mappable PET (>Q30)" does not define Q30. Redundancy is undefined too. In both example columns it matches 1 − non-redundant PET / mappable PET to the nearest percent (derived).
- A mapping span of exactly 8 kb falls in neither PET class.
- "at least 200 - 300 ng of ChIP DNA" gives a minimum as a range (p18). The floor is either 200 ng or 300 ng.
- The document sets no [biological replicate](../../GLOSSARY.md#biological-replicate) number and no reproducibility metric. It sets no minimum cell number. The protocol uses ~10⁸ cells (p5). Antibody quality has only the Table 3 recommendation.

Against the [portal ChIA-PET page](standards.md) ([snapshot](../../sources/pages/chia-pet.md)):

- Total read pairs: the portal recommends ≥ 150,000,000 and calls ≥ 180,000,000 high quality. The PDF expects a Total PET of 200,000,000 (±20%). Its text adds "~200-300 million raw reads" (p14) and saturation near 200 million PET reads (p12). It never states 150,000,000 or 180,000,000. The derived lower bound of 160,000,000 falls between the portal tiers. The portal counts read pairs. The PDF counts PETs and raw reads. It defines neither.
- Fraction of read pairs with bridge linker: the portal recommends ≥ 0.5. The PDF sets no threshold. PET w/ linker over Total PET gives 0.62 (MiSeq) and 0.61 (HiSeq) in its example (derived).
- Non-redundant PETs: the portal recommends ≥ 10,000,000. The PDF expects 40,000,000 (±20%).
- Intra/inter-chromosomal PET ratio: the portal recommends ≥ 1 and does not define the ratio. The PDF's expected column gives 10,000,000 / 20,000,000 = 0.5 (derived). Its printed example ratios are 0.46. Both fall below the portal value. Counting self-ligation PETs as intra-chromosomal gives 1.0 for the expected column and 0.83 for the HiSeq example (derived).
- Binding peaks: the portal recommends ≥ 10,000. The PDF expects 50,000 (±20%). Its examples have 37,294 (MiSeq) and 81,544 (HiSeq).
- Clusters: the PDF expects >20,000 intra-chr and <1,000 inter-chr clusters with PET count ≥10. The portal has no cluster metric.
- Pipeline: the PDF outlines ChIA-PET Tool V2. The portal runs ChIA-PIPE.
- The [ENCODE3 v1.0 guidelines](experimental-guidelines-encode3.md) asked for two biological replicates and two replicate concordance reports (Spearman correlation and interaction overlap). This document drops both. It replaces the v1.0 depth rule of >150 million reads with the Table 4 expected values.

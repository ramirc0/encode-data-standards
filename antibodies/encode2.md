# Antibody characterization: ENCODE2

[Root](../README.md) / [Antibodies](README.md) / ENCODE2

## Sources

| Label | Document | Date | URL |
|---|---|---|---|
| 2008 | "Validation of Commercial Histone Modification Antibodies to be Used for ChIP" (Karpen and Strome), 2 pages. The portal lists it as "Standards for Characterizing Histone Modification Antibodies" (Nov 2008). | November 20, 2008 | [PDF](https://www.encodeproject.org/documents/bcd825ce-e47b-4c6d-a183-897de4455d74/@@download/attachment/Standards_for_characterizing_histone_modification_antibodies_2008_Nov.pdf) |
| 2010 | ENCODE and modENCODE Guidelines For Experiments Generating Chromatin and Transcription Factor Data, Version 1.0, 17 pages. The portal lists it as "Chromatin and Transcription Factor Data Standards v1.0". | April 09, 2010 | [PDF](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) |
| 2011 | ENCODE and modENCODE Guidelines For Experiments Generating ChIP, DNase, FAIRE, and DNA Methylation Genome Wide Location Data, Version 2.0, 20 pages | July 20, 2011 | [PDF](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) |
| 2012 | Landt SG et al. ChIP-seq guidelines and practices of the ENCODE and modENCODE consortia. Genome Res 22:1813-31. Cited by section. | 2012 Sep | [PMC3431496](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3431496/) |
| 2014 | [Antibody Characterization Standards, ENCODE 3](encode3-2014.md), for comparison only | February 2014 | [PDF](https://www.encodeproject.org/documents/88dc12f7-c72d-4b43-a6cd-c6f3a9d08821/@@download/attachment/Antibody_Characterization_ENCODE3_February2014.pdf) |
| 2015 | [Antibody Characterization Standards](encode3-2015.md), for comparison only | August, 2015 | [PDF](https://www.encodeproject.org/documents/e7c46221-861b-4687-ab2c-6c5269223c5c/@@download/attachment/Antibody_Characterization_ENCODE3_August2015.pdf) |

The ENCODE2 sections of the portal ChIP-seq pages say antibodies "must be characterized according to standards set by the consortium for ENCODE2 data" and link the 2010 document ([snapshot](../sources/pages/chip-seq__transcription-factor-encode3.md)). The same sections cite the 2012 paper for ENCODE2 data quality standards. 2010 Appendix II reprints the 2008 text with small wording edits. It adds one sentence, "The tests need only be performed once for each antibody lot." The portal marks antibody characterizations imported from previous projects as [not reviewed](../GLOSSARY.md#antibody-characterization-status) and does not use those lots on current incoming data ([snapshot](../sources/pages/help__antibody_characterization_process.md)).

Scope: ENCODE and modENCODE antibodies for ChIP-chip and ChIP-seq. 2008 covers commercial histone-modification antibodies only. The later sources add TF and chromatin-protein antibodies plus epitope-tagged factors. Replicate, depth, control and QC rules from the same documents are in [ChIP-seq ENCODE2](../dna-binding/chip-seq/encode2.md).

## TF and chromatin-protein antibodies

2010 covers antibodies "against transcription factors and chromatin proteins" (p2). 2011 and 2012 head the section "Characterization of antibodies directed against transcription factors".

### Characterizations required

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Specificity tests | The tests below "must be employed" | must | 2010 p2 |
| Primary and secondary | Both, for each new antibody and each new lot of a characterized antibody | required | 2011 p2 |
| Primary and secondary | Both, repeated for each new antibody or antibody lot number used for ChIP-seq | must | 2012 Box 1 |
| Tests per antibody | A primary and a secondary test for each monoclonal antibody or each lot of a polyclonal antibody | stated | 2012 Antibody and immunoprecipitation specificity |
| Secondary count | One method from a menu: "one of the four following methods" (2010), "one of five assays" (2011), "at least one of the following five assays" (2012). The 2012 text says the standard "requires only one secondary assay". | must (2010, 2011); stated (2012) | 2010 p3; 2011 p3; 2012 Box 1 |
| Non-compliant reagents | "a successful experiment can be performed with reagents that fail to strictly comply". Secondary tests can support an antibody that fails an initial assessment. | stated | 2012 Antibody and immunoprecipitation specificity |
| Characterization data | Made public alongside the ENCODE dataset | should | 2010 p2 |

### Primary methods and pass criteria

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Methods | Immunoblot or immunofluorescence (IF) | should (2010); stated (2011, 2012) | 2010 p2; 2011 p2; 2012 Box 1 |
| Immunoblot band | "essentially a single band of the predicted size" | should | 2010 p3 |
| Immunoblot band share | Predicted band "no less than one half of the total signal in the lane", by quantitative immunoblot of an IP from nuclear extracts or whole cells | minimum standard | 2010 p3 |
| Immunoblot samples | Whole cell extract, nuclear extract, chromatin preparation or immunoprecipitated material | should (2011); stated (2012) | 2011 p2; 2012 Box 1 |
| Immunoblot band share | Primary reactive band holds "at least 50% of the signal observed on the blot" | should (2011); "We use the guideline" (2012) | 2011 p2; 2012 Box 1 |
| Band size | Ideally the size expected for the protein | should, "Ideally" | 2011 p2; 2012 Box 1 |
| Size or band exceptions | A main band off the expected size by "more than 20%" (2012: ">20%"), or multiple bands (2012: "no band represents >50% of the signal"). Acceptable "under certain circumstances": mobility documented in published studies with the same lot, band signal reduced by siRNA knockdown or mutation, or the factor identified by mass spec (2012: "in all band(s)"). | acceptable (2011); "can be used", "further criteria must be met" (2012) | 2011 p2; 2012 Box 1 |
| IP from nuclear extract | Before ChIP, show that the protein can be efficiently immunoprecipitated from a nuclear extract | helpful | 2011 p3; 2012 Box 1 |
| IF | Used if immunoblots fail. The pattern conforms to expectations, for example nuclear staining. 2011 and 2012 add "only in cell types or under specific growth conditions that express the factor". | may, must (2010); may, should (2011); can, should (2012) | 2010 p3; 2011 p3; 2012 Box 1 |
| IF pairing | Combined with a protein-reduction method: siRNA or shRNA knockdown, or a knockout cell line or organism | must (2011); should (2012) | 2011 p3; 2012 Box 1 |

### Secondary methods and criteria

| Method | Criterion | ENCODE wording | Source |
|---|---|---|---|
| Knockdown or knockout | Knockdown of the target. 2011 and 2012 run immunoblots or IPs on knockdown or knockout extracts. 2010 and 2012 run knockdowns in duplicate. | should (2010); must (2011); stated (2012) | 2010 p3; 2011 p3; 2012 Box 1 |
| Knockdown, immunoblot | Expected band and other immunoreactive bands reduced "to 30% or less of the signal of unaffected cells" | should | 2010 p3 |
| Knockdown, immunoblot or IF | Primary signal and other immunoreactive bands reduced "to no more than 30% of the original signal". Note any remaining signal. | should (2011); "We use the guideline" (2012) | 2011 p3; 2012 Box 1 |
| Knockdown, IF | Nuclear staining "completely eliminated". Note remaining cytoplasmic background. | should | 2010 p3 |
| Knockdown by ChIP | If the primary methods fail: statistically significant reduction of ChIP signals "in 30% of peaks (or in >30% in the size of enriched regions for broad marks)" against knockdown controls. A control knockdown, for example scrambled siRNA, is run and analyzed at the same time. | "deemed acceptable" | 2011 p3 |
| Knockdown by ChIP | ChIP-chip or ChIP-seq signals reduced by ">50%" relative to control | "can be submitted" | 2012 Box 1 |
| Knockdown control | Control knockdown, for example scrambled siRNA, performed and submitted. It shows no signal reduction. Report the signal normalization method. | should | 2012 Box 1 |
| IP-mass spec | MS of IP'd proteins from major bands (or all material) identifies peptides of the predicted target. Every immunoreactive band is shown to be the expected protein "and/or not a known chromosomal associated protein". | should | 2010 p3 |
| IP-mass spec | All immunoreactive bands analyzed. The protein found corresponds to the target. Other chromosomal proteins in a band are "at lower prevalence than the desired protein", by peptide counts or other methods. | should (2011); "passes", "accepts" (2012) | 2011 p3; 2012 Box 1 |
| IP-mass spec | Other chromosomal proteins are also accepted if shown to come from nonspecific IP, for example present in a control IP | accepts | 2012 Box 1 |
| IP-mass spec report | All proteins identified. 2011 and 2012 add peptide counts. | should (2010, 2011); stated (2012) | 2010 p3; 2011 p3; 2012 Box 1 |
| Multiple antibodies | Antibodies against different parts of the target. 2011 and 2012 add other members of a known complex. | may (2010, 2011); can (2012) | 2010 p3; 2011 p3; 2012 Box 1 |
| Antibodies to protein modifications | Two independently raised antibodies, each characterized to the Appendix II minimum standards | recommended | 2010 p3 |
| Multiple antibodies, overlap | Statistically significant target overlap. Any reasonable correlation ("r2 greater or equal to 0.5"), or 80% of the top 40% of one list overlap the second antibody's list. | can be used; should | 2010 p3 |
| Multiple antibodies, qPCR | Second antibody tests 24 targets from a range of positions by qPCR. "At least 80% overlap of validated targets is expected." | expected | 2010 p4 |
| Multiple antibodies, overlap | For ChIP-seq, significant overlap of enriched loci by one of three methods. a) 80% of the top 40% of peaks from one antibody overlap the other's loci, and vice versa. b) R2 greater than 0.5 of peak signals. c) Peaks passing a fixed IDR threshold of 1% within each antibody's replicates match those across antibodies in number and overlap (factor of 2). | required; should | 2011 p3 |
| Multiple antibodies, qPCR | Second antibody tests 24 targets from a range of enrichments by qPCR. At least 80% of tested loci give signals within 25% of one another, or positive targets show at least 2-fold overall enrichment. "Other strong correlations can be considered." | can; should | 2011 p3 |
| Multiple antibodies, overlap | Significant overlap of enriched loci, with ChIP-seq compared by the Box 3 [IDR](../GLOSSARY.md#idr) standards. For complex members, literature evidence of limited overlap justifies partial overlap. | expected; stated | 2012 Box 1 |
| Multiple antibodies, report | Full set of targets (2011: enriched loci) from each antibody, plus the intersection | should | 2010 p4; 2011 p3 |
| Epitope-tagged protein | May be used, preferably expressed from the endogenous promoter. Analyzed as for multiple antibodies. | may; preferably; should | 2010 p4; 2011 p4; 2012 Box 1 |
| Motif enrichment | At least 4-fold, using a known or justifiable de novo motif of at least six nucleotides. Motif present in at least 10% of analyzed peaks. | will be required; should | 2011 p4 |
| Motif enrichment | Eligible if the motif is well characterized and either no paralogs are expressed or the antibody targets a unique region. Peaks at a 0.01 IDR threshold. Motifs enriched at least fourfold over all accessible regions (for example DNase hypersensitive regions) and present in >10% of analyzed peaks. | can be used; should | 2012 Box 1 |
| Motif enrichment | Failing the threshold "does not necessarily indicate poor quality data". ENCODE had used the standard "for 1 yr". | stated | 2012 Box 1; 2012 Antibody and immunoprecipitation specificity |

### New cell types and lots

| Case | Rule | ENCODE wording | Source |
|---|---|---|---|
| Reuse by other groups | Antibodies characterized in one organism or cell type can be used there by other groups without additional characterization | can | 2010 p4 |
| Same lot, other groups | No further characterization for the same lot (2011). Characterized once (2012). | may (2011); only need (2012) | 2011 p4; 2012 Box 1 |
| New cell type or organism | Characterized if successfully tested by "*any*" single criterion above | will be considered | 2010 p5 |
| New cell type or organism | One validation method for an antibody characterized in one cell type. 2012 gives immunoblot as an example. | required (2011); stated (2012) | 2011 p4; 2012 Box 1 |
| Additional cell types | No further validation once validated in at least 3 different cell types | stated (2011); "do not require" (2012) | 2011 p4; 2012 Box 1 |
| Whole organisms | Three growth stages. Testing in them is "sufficient" (2010). After them no further characterization is required (2011, 2012). | sufficient; not required | 2010 p4; 2011 p4; 2012 Box 1 |
| New cell line, tissue or stage | After validation in one, motif enrichment (annotation enrichment for histone marks) can validate another. The new motif enrichment is "no less than 15% below" the original percentage. | can; should | 2011 p4 |
| Different lots | Lots from the same manufacturer need no characterization if they recapitulate earlier ChIP-chip or ChIP-seq results "to the standards established for biological replicates" ([biological replicate](../GLOSSARY.md#biological-replicate)) | do not need | 2010 p5 |
| Different lots | Characterized "as if they were new antibodies". 2012 says lots "of the same catalog number". | must (2011); stated (2012) | 2011 p4; 2012 Box 1 |

### Rescue paths and extra controls

| Case | Rule | ENCODE wording | Source |
|---|---|---|---|
| Alternate pathway | For antibodies that work for ChIP but not IF or Western. IF and Western are attempted for every sample first. | must | 2010 p4 |
| Option 1, prior knowledge | The experimenter gives a rationale for why the ChIP pattern is valid. No absolute criteria apply. The Data Analysis Working Group reviews and approves it before release, case by case. The rationale is released with the data track. | must; should | 2010 p4 |
| Option 2, RNAi ChIP | Robust ChIP signal, and ChIP median signal after RNAi reduced "to <50% the original signal in duplicate" | "will be considered validated" | 2010 p4 |
| Failed immunoblot or IF | Knockdown measured by ChIP (secondary methods above) | can | 2011 p3 |
| Blocking protein or peptide | Optional. Report results. Does not substitute for the methods above. | may | 2010 p4 |
| Additional controls | Peptide or protein competition of immunoblot, IF or ChIP signals, where signals are expected to diminish. Welcomed but "cannot replace the criteria". Protein expression across timepoints or conditions that matches RNA expression is "also a useful criteria". | welcomed; cannot replace | 2011 p4 |
| Multi-gene families | Antibodies to regions unique to one family member. Note any potential cross-reaction when reporting data. | "will be prepared", should (2010); should (2011); "best practice", stated (2012) | 2010 p4; 2011 p4; 2012 Box 1 |

## Epitope-tagged factors

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Expression | Tagged factors expressed from natural promoters in low copy | recommended | 2011 p4 |
| Expression | Tagged factors expressed "at a comparable amount to the endogenous factor" | "ENCODE uses the criteria" | 2012 Box 1 |
| Expression | Large clones (usually fosmids and BACs) with as much regulatory information as possible | "typically addressed" | 2012 Immunoprecipitation using epitope tagged constructs |
| Heterologous promoter | Data comparing tagged and endogenous expression, by immunoblot for protein or qPCR for RNA. 2011 adds "under conditions in which the ChIP experiments are performed". | should (2011); needed (2012) | 2011 p4; 2012 Box 1 |
| No ChIP signal at endogenous levels | Note it, or an unmeasurable endogenous protein, when the data are reported (2011). Elevated expression "can provide useful information" (2012). | must (2011); can (2012) | 2011 p4; 2012 Box 1 |
| Control | IP with the same anti-tag antibody in otherwise identical cells that lack the construct or do not express the tagged factor. 2011 also names "cells lacking the epitope tag". | recommended | 2011 p4, p7; 2012 Box 1 |
| Scoring | Against these controls or input DNA | can | 2011 p4 |

## Histone-modification antibodies

All four sources address commercial histone antibodies. 2008 and 2010 call the tests #1 and #2A to #2D. 2011 numbers the secondary tests 1 to 5. 2012 keeps that order under headings.

### Number of tests and lots

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Independent methods | At least 2 independent methods for all commercial histone antibodies | propose (2008, 2010); must (2011); stated (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Histone modifications) |
| Test set | Immunoblot plus one secondary: peptide binding (dot blots), mass spec, knockdown of a modifying enzyme or mutant histones, or genome annotation enrichment | "we set the standard" | 2012 Antibody and immunoprecipitation specificity |
| Second test | Specificity verified by at least one test besides the primary | must (2008, 2010, 2011); stated (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Secondary test) |
| New lots | Analyzed independently | must (2008, 2010, 2011); stated (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Histone modifications) |
| Test frequency | Once for each antibody lot | need only | 2010 p15; 2011 p5; 2012 Box 1 (Histone modifications) |
| Who tests | ENCODE or modENCODE labs (2011, 2012: the lab performing ChIP), or the vendor only if it provides data for the specific lots | may (2008, 2010, 2011); stated (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Histone modifications) |

### Primary test

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Cross-reactivity blot | Western blot (2011, 2012: immunoblot) of total nuclear extract and recombinant histone, for reactivity with non-histone proteins and unmodified histone | must (2008, 2010, 2011); stated (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Primary test) |
| Concentration series | Extract and recombinant histone in a series, with recombinant levels comparable to the histone in nuclear extract | should (2008, 2010, 2011); stated (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Primary test) |
| Species | Nuclear extracts from each species to be studied by ChIP | should (2008, 2010, 2011); stated (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Primary test) |
| Band share | Specific nuclear histone band at least 50% of the nuclear protein signal. 2012 says "at least 50% of the signal in western blots of nuclear extract". | should; "To pass the criteria" (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Primary test) |
| Ratio to other bands | At least 10-fold enrichment relative to any other single band | should; "To pass the criteria" (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Primary test) |
| Ratio to unmodified histone | At least 10-fold enriched signal relative to unmodified histone | should; "To pass the criteria" (2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Primary test) |

### Secondary tests

| Test | Criterion | ENCODE wording | Source |
|---|---|---|---|
| Peptide binding or competition | At least a 10-fold enriched binding signal for the modification of interest relative to other modifications | "would contribute to confidence" (2008, 2010); "provides confidence" (2011, 2012) | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Peptide binding tests) |
| Peptide binding caveat | Binding to tail peptides in vitro may differ from binding to full-length histones in chromatin | stated | 2008 p1; 2010 p15; 2011 p5; 2012 Box 1 (Peptide binding tests) |
| Peptide binding by vendor | The vendor can run peptide binding or competition with the same lot | can | 2012 Box 1 (Peptide binding tests) |
| Mass spec, scope | Mass spec of material IP'd from histone preparations, for related and historically problematic modifications (for example H3K9me vs H3K27me, or me1, me2 and me3) | should (2008, 2010, 2011); can (2012) | 2008 p1-2; 2010 p15-16; 2011 p5; 2012 Box 1 (Mass spectrometry) |
| Mass spec, target | Target modification at least 80% of the IP'd histone signal | should; "For ENCODE data" (2012) | 2008 p2; 2010 p16; 2011 p5; 2012 Box 1 (Mass spectrometry) |
| Mass spec, contaminants | Contaminating bands "should not contribute more than 20%". 2012 sets no contaminant limit. | should not | 2008 p2; 2010 p16; 2011 p5 |
| Mass spec, interpretation | The test may often fail because IP co-isolates histones with other modifications. Only a positive result is interpretable. | stated | 2011 p5; 2012 Box 1 (Mass spectrometry) |
| Enzyme mutants | Signal below 10% of wild-type signal in mutant samples. 2008 and 2010 name mutants in S. cerevisiae, S. pombe, Drosophila, C. elegans or mammalian cells. | should (2008, 2010, 2011); stated (2012) | 2008 p2; 2010 p16; 2011 p6; 2012 Box 1 (Mutants defective in modifying histones) |
| RNAi substitute | RNAi (2011, 2012: or siRNA) depletion of the modifying activity may replace mutants. Readout by Western blot or immunoblot, or by IF. | may; can | 2008 p2; 2010 p16; 2011 p6; 2012 Box 1 (Mutants defective in modifying histones) |
| Redundant enzymes | Double mutants or RNAi, for example for K9 methylation in Drosophila | may be required | 2008 p2; 2010 p16; 2011 p6; 2012 Box 1 (Mutants defective in modifying histones) |
| Mutant test replicates | Replicates of the test | encouraged but not required | 2011 p6; 2012 Box 1 (Mutants defective in modifying histones) |
| Mutant test controls | Positive controls: the antibody works on wild-type samples processed in parallel, and the mutant extract suits the assay | required (2011); stated (2012) | 2011 p6; 2012 Box 1 (Mutants defective in modifying histones) |
| Mutant caveat | Mutant and RNAi tests usually cannot test discrimination of mono-, di- and trimethylation | stated | 2008 p2; 2010 p16; 2011 p6; 2012 Box 1 (Mutants defective in modifying histones) |
| Mutant histones | Mutant histones, for example H3 with Lys4 mutated to Arg or Ala, in yeast. At least a 10-fold reduction in signal relative to wild-type histone preparations. 2011 and 2012 say immunoblot or IP signal. | expect | 2008 p2; 2010 p16; 2011 p6; 2012 Box 1 (Mutant histones) |
| Mutant histone caveat | Cannot show whether antibodies discriminate between mono-, di- and trimethylation | stated | 2008 p2; 2010 p16; 2011 p6; 2012 Box 1 (Mutant histones) |
| Annotation enrichment | Enrichment at annotated features, for example TSSs, can validate chromatin-associated modifications and proteins (2012: "certain" ones) | can | 2011 p6; 2012 Box 1 (Annotation enrichment) |
| Annotation enrichment | For a well-characterized mark, for example H3K4me3, localization matches known overlap standards from the literature or existing ChIP-seq data. Point-source peaks: 80% of the top 40% overlap known annotations (2011), or overlap assessed with the Box 3 IDR guidelines (2012). | should (2011); expected (2012) | 2011 p6; 2012 Box 1 (Annotation enrichment) |

### Test order and ChIP-based validation

| Criterion | Rule | ENCODE wording | Source |
|---|---|---|---|
| Flow, methylated residues | #1 western blot, then #2A peptide binding or competition. #2B mass spec for similar and problematic modifications. 2011 states this flow for all histone modifications. | envision; should (2011) | 2008 p2; 2010 p16; 2011 p6 |
| Flow, other modifications | #1 western blot, then #2A or one of the other #2 tests | envision | 2008 p2; 2010 p16 |
| Grandfathering | Once validated antibodies give ChIP results, old or new antibodies can be validated by similar testing or by ChIP results "statistically consistent" with the validated antibodies, judged by ENCODE and modENCODE replicate-agreement standards | can | 2008 p2; 2010 p16-17 |
| Grandfathering | New antibodies can validate results of previously used antibodies and "grandfather such datasets" | can | 2011 p6 |
| Two antibodies | ChIP with 2 independent antibodies whenever possible, with statistical comparisons and the intersection of the peak sets | encourage (2008, 2010, 2011); aspire (2012) | 2008 p2; 2010 p17; 2011 p6; 2012 Box 1 (Use of two different antibodies) |

## Reporting

| Item | Requirement | ENCODE wording | Source |
|---|---|---|---|
| Antibody identity | Catalog and lot number. For a non-commercial antibody, its precise source. | requires (DCC rubric, 2010, 2011); minimally included (2012) | 2010 p12; 2011 p14; 2012 Box 4 (Metadata) |
| Target recognition | "What criteria were used to assure that the antibody correctly recognizes the target?" | requires (DCC rubric) | 2010 p12 |
| Characterization results | Images of Western or IF experiments (2010). A summary of results with immunoblot and IF images (2011), plus mass spec protein lists (2012). | requires (2010, 2011); minimally included (2012) | 2010 p12; 2011 p14; 2012 Box 4 (Metadata) |
| Public release | Characterization data made public alongside the ENCODE dataset | should | 2010 p2 |

## Changes across versions

"-" means the source does not address the criterion. The 2008 source covers histone antibodies only.

| Criterion | 2008 | 2010 | 2011 | 2012 | 2014 | 2015 |
|---|---|---|---|---|---|---|
| TF characterizations | - | Primary (immunoblot or IF) plus one of four secondary methods | Primary plus one of five secondary assays, for each new antibody and each new lot | Primary plus at least one of five secondary assays, repeated for each new antibody or lot | Primary and secondary, both deemed "COMPLIANT". Primary for each lot and each cell type. | Same as 2014. Adds a special-request exception route. |
| TF primary methods | - | Immunoblot or IF | Immunoblot. IF if immunoblot fails, combined with knockdown ("must"). | Same as 2011, but the IF pairing is "should" | Immunoblot or IP-Western. IF not listed. | Same as 2014 |
| TF immunoblot pass | - | "essentially a single band of the predicted size". Predicted band "no less than one half of the total signal in the lane". | Primary band "at least 50% of the signal observed on the blot", ideally the expected size. Off by "more than 20%", or multiple bands, acceptable with published mobility, siRNA or mass spec evidence. | Same as 2011. The exception covers ">20%" or "no band represents >50%". Mass spec must find the factor "in all band(s)". | Major band "within 20%" of the predicted size and ">50% of all bands on the gel" | Same as 2014. No signal or wrong-size signals: mass spec rescue. |
| TF knockdown | - | Bands "30% or less" of unaffected cells. IF nuclear staining "completely eliminated". | "no more than 30% of the original signal" by immunoblot or IF. ChIP: significant reduction "in 30% of peaks". | "no more than 30%". ChIP: reduction ">50%". | "no more than 50% of the original signal" | Same as 2014 |
| TF mass spec | - | Target peptides found. Every band the expected protein "and/or not a known chromosomal associated protein". | Target found in the bands. Other chromosomal proteins "at lower prevalence" than the target. | Same as 2011, or shown to be nonspecific, for example in a control IP | Agreed appropriate, but requirements "have not yet been finalized". Slides: "not yet approved". | Target enriched. "top 20 ranked proteins" and top TF. Top ranked member of its TF family. |
| TF other secondary methods | - | Multiple antibodies. Epitope tag. Alternate pathway after IF and Western fail. | Adds complex members and motif enrichment (at least 4-fold, motif in at least 10% of peaks) | Motif at least fourfold over accessible regions, in >10% of IDR 0.01 peaks | ChIP-seq comparison by IDR. Overexpressed tagged protein. Motif "not considered a valid" method. | Same as 2014, plus mass spec |
| ChIP comparison criterion | - | r2 "greater or equal to 0.5", or 80% of the top 40%. qPCR of 24 targets, at least 80% overlap. | 80% of the top 40%, R2 greater than 0.5, or IDR 1% within a factor of 2. qPCR of 24 targets. | Box 3 IDR standards | RR_new and SR_new. Fails only if both > 2. | Same as 2014. Lot and data named by ENCODE accessions. |
| TF new cell type | - | Characterized if "*any*" single criterion passes. Three growth stages suffice for whole organisms. | One validation method. None after at least 3 cell types or three growth stages. | Same as 2011 | Primary in each cell type. Same banding pattern: nothing more. Different pattern: a secondary in the new cell type. | Same as 2014 |
| TF lots | - | Same-manufacturer lots need none if they reproduce earlier ChIP results to replicate standards | Different lots characterized "as if they were new antibodies" | Same as 2011, for lots "of the same catalog number" | New lot needs a primary. A secondary only if the pattern differs. | Primary in at least one earlier cell type and in the deposit cell type. Comparison lot named by accession. |
| Epitope tags | - | Secondary method d), preferably the endogenous promoter | Secondary method 4. Natural promoter in low copy "recommended". Heterologous promoter needs expression data. | Expression "comparable" to endogenous. Heterologous promoter needs expression data. | Tagged-target ChIP-seq as a comparator. Overexpressed tagged protein blots. Tagged-protein rules "described elsewhere". | Same as 2014 |
| Histone characterizations | Test #1 plus at least one test #2, under a proposed rule of "at least 2 independent methods" | Same as 2008 (Appendix II) | Same, "must be validated" | Same, stated as practice | Primary and secondary, both deemed "COMPLIANT" | Same as 2014 |
| Histone primary blot | Nuclear extracts from each species studied. Band at least 50% of the nuclear protein signal. At least 10-fold over any other band and over unmodified histone. | Same as 2008 | Same as 2008 | Same values. "at least 50% of the signal in western blots of nuclear extract". | Extracts from "at least 3 cell lines/types" including the species, plus a recombinant unmodified histone. At least 50% of the protein signal. Both 10-fold ratios. | Extracts from the species. Recombinant histone "preferable", and the 10-fold ratio to it applies only "if this is included". |
| Histone peptide or dot-blot specificity | At least 10-fold, "would contribute to confidence" | Same as 2008 | At least 10-fold, "provides confidence" | Same as 2011. Vendors can run it on the same lot. | 10-fold "is required". Dot blots, peptide arrays or peptide competitions are the only secondary. | Same as 2014 |
| Histone mass spec | Target at least 80% of the IP'd histone signal. Contaminating bands "should not contribute more than 20%". | Same as 2008 | Same as 2008. Only a positive result is interpretable. | Target at least 80%. No contaminant limit. | Not listed | Not listed |
| Histone other secondary tests | Enzyme mutants below 10% of wild type. Mutant histones at least a 10-fold reduction. | Same as 2008 | Same, plus required positive controls and annotation enrichment (80% of the top 40% of point-source peaks) | Same as 2011. Annotation overlap by Box 3 IDR. | None | ChIP-seq similarity passing the ENCODE IDR cut-offs |
| Histone lots and cell types | New lots analyzed independently. Old or new antibodies can be validated by ChIP results consistent with validated antibodies. | Same as 2008. Tests once per lot. | New lots analyzed independently, once per lot. New antibodies can "grandfather" old datasets. | New lots analyzed independently, once per lot | Primary for each lot. Eligible in all cell types if the species was in the primary. | New lot needs primary and secondary. Eligible in all cell types of the same species. |
| Who tests and reviews | Labs or vendors, vendors only with lot-specific data | Same as 2008. The Data Analysis Working Group reviews alternate-pathway rationales. | ChIP lab or supplier (histone tests) | Same as 2011 | The DCC antibody characterization committee approves each lot before data submission | The DCC antibody characterization review committee approves each lot before release. It considers exceptions with the Production PIs. |

## Conflicts and gaps

Within sources:

- 2010 lot rules conflict. The TF section exempts same-manufacturer lots that reproduce ChIP results (p5). Appendix II says new histone lots "must be analyzed independently" (p15), though its grandfathering clause accepts consistent ChIP results (pp16-17).
- 2010 method c) points to Appendix I for multiple antibodies and the overlap rule (p3). Appendix I has no antibody content.
- 2011 cites "Figure 1" and "Table 1" for the TF workflow (p2). Neither appears in the document.
- 2011 multiple-antibody method a) is garbled ("the target is for 80% of the top 40%"). The text announces "one of three methods" and then adds a qPCR option (p3).
- 2011 ChIP knockdown mixes measures, "30% of peaks" for peaks and ">30% in the size of enriched regions" for broad marks (p3).
- 2012 immunoblot boundary: the guideline is "at least 50%", but the exception covers cases where "no band represents >50%". A band at exactly 50% fits both.
- New cell types (2011, 2012): one method per new cell type, and none after at least 3 cell types. Neither text says how the rules combine.
- Mutant tests (all four histone texts): enzyme mutants need signal "below 10%" of wild type, mutant histones "at least a 10-fold reduction". Exactly 10% residual signal passes the second and fails the first.
- 2008 and 2010 frame the 2-method rule as a proposal ("We propose") while the tests use "must". 2011 makes the rule "must".
- 2008 and 2010 grandfathering relies on "ENCODE and modENCODE standards for statistical agreement between replicates", which neither defines.
- The mass spec test covers "related and historically problematic modifications" with examples but no list (2008 to 2012).

Across versions:

- TF band share: 2010 "no less than one half" and 2011, 2012 "at least 50%" accept exactly 50%. [2014](encode3-2014.md) and [2015](encode3-2015.md) require ">50%".
- TF band size: 2011 and 2012 treat a size off by more than 20% as an exception that needs more evidence. 2014 and 2015 make "within 20%" part of the pass rule.
- Knockdown: residual signal at most 30% in 2010 to 2012, at most 50% in 2014 and 2015.
- Correlation operator: 2010 "r2 greater or equal to 0.5", 2011 "R2 greater than 0.5".
- Motif presence: "at least 10%" of peaks (2011) against ">10%" (2012). 2014 rejects motif enrichment as a method.
- Histone mass spec: 2012 drops the 20% contaminant ceiling and changes "should be tested" to "can be tested". 2014 and 2015 drop histone mass spec and both mutant tests.
- Histone peptide specificity: advisory through 2012, "required" in 2014 and 2015, and "ideal" in the [2016 histone standard](histone-chromatin.md).
- TF lots: 2010 exempts lots that reproduce ChIP results. 2011 and 2012 treat every new lot as a new antibody. 2014 requires a primary for each new lot and a secondary only if the pattern differs.

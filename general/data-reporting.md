# Data reporting: ENCODE2 guidelines, 2009 to 2012

[Root](../README.md) / [General](README.md) / Data reporting

Sources:

| Label | Document | Date | URL |
|---|---|---|---|
| 2009 | Recommended Standards for Reporting mod/ENCODE Data, Version 1.0, 2 pages. Footer: "Standards for data reporting 2009 Janurary". | January 23, 2009 | [PDF](https://www.encodeproject.org/documents/cfcd1107-9efa-4918-875a-8b1a6c2fe915/@@download/attachment/Standards_for_data_reporting_2009_Jan.pdf) |
| 2010 | ENCODE and modENCODE Guidelines For Experiments Generating Chromatin and Transcription Factor Data, Version 1.0, 17 pages. Section V (with the DCC rubric) and the release rules. | April 09, 2010. Section V notes are dated 5-30-2010. | [PDF](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) |
| 2011 v2 | ENCODE and modENCODE Guidelines For Experiments Generating ChIP, DNase, FAIRE, and DNA Methylation Genome Wide Location Data, Version 2.0, 20 pages. Section V. | July 20, 2011 | [PDF](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) |
| Landt 2012 | Landt et al., "ChIP-seq guidelines and practices of the ENCODE and modENCODE consortia", Genome Res. 22(9):1813-1831. Box 4 and the reporting and Discussion sections. | 2012 Sep | [PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3431496/) |

Page numbers are PDF pages. Landt 2012 rows cite the section instead. "Reporting" is its section "Guidelines for reporting ChIP-seq data".

Scope: where mod/ENCODE producers send raw and processed array and sequencing data, and which peak fields and metadata they report. Landt 2012 adds guidance that matches data quality to data use.

## Sequencing data storage

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Image files | Need not be stored "for the long term" | do not need | 2009 p1; 2010 p9 |
| Image files | Need not be stored | do not need | 2011 v2 p13; Landt 2012 Box 4 |
| Intensity files | "should be saved for the long term" | should | 2009 p1 |

## Array data (ChIP-chip, DNase-chip/array, FAIRE-chip)

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Raw data | To GEO | should | 2009 p1 |
| Raw data | To GEO "simultaneous to DCC submission (note 1)" | should | 2010 p9 |
| Raw data | "to both GEO and the DCC". For modENCODE, the DCC submits to GEO. | should | 2011 v2 p13 |
| Project flag | Flagged as part of the mod/ENCODE project "upon submission to NCBI" | should | 2009 p1; 2010 p9 |
| Processed data | To the relevant DCC as ratio tracks and called peaks, with metadata that include the peak caller version | should | 2009 p1; 2010 p9; 2011 v2 p13 |

## Sequencing data (ChIP-seq, DNase-seq, FAIRE-seq)

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Raw data | To GEO (note 1) | should | 2009 p1 |
| Raw data | To "GEO (Small Read Archive; SRA) simultaneous to DCC submission" | should | 2010 p9 |
| Raw data | "to both GEO/SRA and the DCC". For modENCODE, the DCC submits to GEO. | should | 2011 v2 p13 |
| Raw data | FASTQ files "should be submitted to both GEO and SRA" | should | Landt 2012 Box 4 |
| Raw data | Raw data "can be submitted to the Short Read Archive (SRA)". ChIP results "are submitted to GEO". | can | Landt 2012 Reporting |
| Public repositories | "Data should be submitted to public repositories." | should | Landt 2012 Box 4 |
| Submission route | NCBI intends sequence data to go directly to GEO. GEO passes primary sequence data to the SRA. | stated | 2009 p2; 2010 p10; 2011 v2 p13 |
| Dual submission | Allowed "If more convenient". Sequences then go to the SRA. Metadata, processed data and a link to the SRA accession go to GEO. | can; should | 2009 p2; 2010 p10; 2011 v2 p13 |
| Project flag | Through "the appropriate genome project ID" | should | 2009 p1; 2010 p9; 2011 v2 p13 |
| Replicates | Each replicate submitted independently | should | 2009 p1; 2010 p10; 2011 v2 p13; Landt 2012 Box 4 |
| Processed data, input | Input signal or alignments, except for DNase/FAIRE Tier 3 lines | should | 2009 p1; 2010 p10; 2011 v2 p13 |
| Processed data, signal | "ChIP, DNase, and FAIRE signal or alignments" | should | 2009 p1; 2010 p10; 2011 v2 p13 |
| Processed data, other | Interpreted data signal and called peaks. FASTQ files. Metadata that include the peak caller version. | should | 2009 p1; 2010 p10; 2011 v2 p13-14 |
| Alignments | The DCC accepts sequence alignments and/or signal graphs for input and ChIP data. Alignments are posted for download and shown as a 'Counts graph' (count of tags overlapping each base) "if no signal graph is submitted". | stated | 2009 p2; 2010 p10 |
| Alignments | The same, without the "if no signal graph is submitted" condition | stated | 2011 v2 p13 |
| FASTQ hosting | The DCC hosts FASTQ data and, where feasible, co-located cluster computing. The GEO/SRA tools "are not mature enough at this stage". 2010 adds a note dated 5/30/2010: "This may now be obsolete (access may now be sufficient)." | stated | 2009 p2; 2010 p10 |
| Gene target lists | The DAC will propose how to generate them. The lists go to the DCC "in the future". | stated | 2009 p1 |

## Peaks and regions

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Point-source peaks | "DNase, FAIRE, or signals from ChIP experiments with antibodies to sequence-specific transcription factors" | stated | 2009 p1; 2010 p10; 2011 v2 p14 |
| Point-source peaks | The only example is "experiments with antibodies to sequence-specific transcription factors" | stated | Landt 2012 Box 4 |
| Peak | "defined as a single base pair" | should (be reported); are reported (Landt 2012) | 2009 p1; 2010 p10; 2011 v2 p14; Landt 2012 Box 4 |
| Start and end | "defined as specific base pairs" | should (be reported); are reported (Landt 2012) | 2009 p1; 2010 p10; 2011 v2 p14; Landt 2012 Box 4 |
| Slot 1 | Signal value (e.g., fold enrichment), from an algorithm chosen by the submitter. Landt 2012 drops the slot numbers. | should (be reported); are reported (Landt 2012) | 2009 p1; 2010 p10; 2011 v2 p14; Landt 2012 Box 4 |
| Slots 2 and 3 | Slot 2 is a P-value. Slot 3 is a Q-value (false discovery rate correction). The submitter chooses the methods. | optional | 2009 p1; 2010 p10; 2011 v2 p14 |
| P-value and Q-value | Listed as "Significance/accuracy measures", with methods chosen by the submitter. Not marked optional. | are reported | Landt 2012 Box 4 |
| Peak metadata | Peak caller approach, plus "methods for determining signal values, P-values, and Q-values, as applicable" | should (be reported) | 2009 p1; 2010 p11; 2011 v2 p14 |
| Peak metadata | The same, plus the "genome reference used" | are reported | Landt 2012 Box 4 |
| Broad regions | "does not pertain to DNase and FAIRE" | stated | 2009 p2 |
| Broad regions | Start and end as specific base pairs. Slot 1 is the average signal value across the region. Slots 2 and 3 are optional. Metadata as for point-source peaks. | stated | 2009 p2; 2010 p11; 2011 v2 p14 |
| Broad regions | The Landt point-source fields without the single-base peak position. The signal value is no longer called an average. | stated | Landt 2012 Box 4 |
| Peaks within regions | Point-source peaks "can be called in addition to broad regions" | can | 2009 p2; 2010 p11; 2011 v2 p14; Landt 2012 Box 4 |
| Peaks within regions | The DCC "does not currently support this feature 5/30/2010" | stated | 2010 p11 |
| Peak type | The investigator decides whether the data fit broad regions, point-source peaks or both | stated; should (Landt 2012) | 2009 p2; 2010 p11; 2011 v2 p14; Landt 2012 Box 4 |

## Peak caller metadata

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Public software | mod/ENCODE "should strive to provide public access to peak calling software" | should strive | 2009 p2; 2010 p11 |
| Software downloads | From the websites of the production groups. The consortium "should build on this arrangement" (the sentence is garbled). | should | 2009 p2; 2010 p11 |
| Peak caller field | A free-form metadata field where producers "are required to include" the peak caller version and parameters | should; required | 2009 p2; 2010 p11 |
| Software updates | Producers update peak caller information (including versions) on their websites "as soon as new or updated software is implemented" | expected | 2009 p2; 2010 p11; 2011 v2 p15 |

## Submission metadata

2010 says the DCC "should implement a rubric for submission that requires" these items "minimally" (p12). 2011 v2 says "The DCC requires" them "minimally" (pp14-15). Landt 2012 Box 4 says they are "minimally included". "Same" in the Landt column means as 2011 v2.

| Item | 2010 rubric (p12) | 2011 v2 list (pp14-15) | Landt 2012 (Box 4, Metadata) |
|---|---|---|---|
| Experiment | - | Item 1: investigator, organism or cell line, experimental protocol (or a reference to a known protocol) | Same |
| Cell growth protocol | Item 3: attach one, or reference a previously submitted protocol | - | - |
| Replicates | Item 1: sign off that the experiment "has been performed in duplicate" | Item 2: [technical](../GLOSSARY.md#technical-replicate) or [biological replicate](../GLOSSARY.md#biological-replicate). "at least two must be performed". | Technical or biological replicate. No count. |
| Data quality | Item 2: sign off that the experiment meets data quality standards | - | - |
| Antibody identity | Item 4: catalog and lot number, or the precise source of a non-commercial antibody. Also the criteria used to confirm that the antibody recognizes the target. | Item 3: catalog and lot number, or the precise source | Same |
| Antibody characterization | Item 5: images of Western or IF experiments | Item 4: summary of results (images of immunoblots, immunofluorescence) | Adds the list of proteins identified by mass spec |
| Peak calling | - (the peak caller version goes in the free-form field, p11) | Item 5: algorithm and parameters, including threshold. Reference genome used to map peaks. | Same |
| Reads and targets | Item 6: number of reads and number of targets for each replicate and for the merged dataset | Item 6: same as 2010 | Same |
| Validation criteria | Item 6: overlap results "(using the top 40% rule)". The criteria used to validate the ChIP-seq data. | Item 7: the criteria used. Overlap results "(using the top 40% rule)". | "overlap results or IDR" ([IDR](../GLOSSARY.md#idr)) |
| Downstream validation | - | Item 8: results, e.g. qPCR | Same ("Experimental validation results") |
| Control track | Item 7: name of the linked INPUT or other control track | Item 9: link to the control track used | Same |
| Failed standards | Item 8: explain why, and FLAG the track on the browser | Item 10: "an explanation is required" | An explanation |

## Release and failing data

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Release | Verified data go to public databases "as consistent with the ENCODE/modENCODE Data Release Policy" | should | 2010 p5 |
| Antibody data | Antibody characterization data are made "publically available alongside the ENCODE dataset" | should | 2010 p2 |
| Failing data | After repeated attempts, data that miss the release criteria "may be released with a prominent note" saying so and why | may | 2010 p6; 2011 v2 p10 |
| Browser flag | The displayed track is "prominently flagged" with a note to use the data with caution | should | 2010 p6; 2011 v2 p10 |
| Non-conforming ChIP-seq | Noted, and submitted with a paragraph on reproducibility: reads per replicate, targets per replicate, overlap information "and so on" | should | 2010 p14 |

## Data use (Landt 2012)

| Criterion | Threshold | ENCODE wording | Source |
|---|---|---|---|
| Sites found in only one experiment | Motif presence "could be used as one criterion for 'rescuing'" them | could | Landt 2012 Discussion |
| Motifs from marginal data | Results "should be cautiously interpreted and stringently validated" | should | Landt 2012 Discussion |
| A few candidate regulatory regions | Data of modest quality "can still be useful" with close inspection of ChIP signals and controls before functional or mutagenesis studies | can | Landt 2012 Discussion |
| Comprehensive catalog of bound regions | "very high-quality and deeply sequenced data sets are required" | required | Landt 2012 Discussion |
| Combinatoric occupancy | "only the highest quality data sets" | recommend | Landt 2012 Discussion |
| Applicability | The authors did not mean "to imply that ENCODE criteria must be applied rigidly to all studies" | stated | Landt 2012 Conclusion |

## Conflicts and gaps

- Raw sequencing data go to GEO in 2009. In 2010 they go to "GEO (Small Read Archive; SRA)" at the time of DCC submission. 2011 v2 sends them "to both GEO/SRA and the DCC". Landt 2012 Box 4 says FASTQ files "should be submitted to both GEO and SRA". Its main text says raw data "can be submitted to the Short Read Archive (SRA)" and results go to GEO.
- The SRA is expanded as "Small Read Archive" (2010) and "Short Read Archive" (Landt 2012).
- Array raw data go to GEO in 2009, and to GEO "simultaneous to DCC submission" in 2010. 2011 v2 sends them "to both GEO and the DCC" and drops the NCBI flag.
- 2011 v2 and Landt 2012 Box 4 drop "for the long term" from the image-file rule. The intensity-file rule appears only in 2009.
- 2010 cites "(note 1)" for array raw data but prints no numbered notes. The 2009 note texts appear inline instead.
- The DCC FASTQ-hosting note appears in 2009 and 2010. 2010 calls it possibly "obsolete", and 2011 v2 drops it.
- Slots 2 and 3 are optional from 2009 through 2011 v2, so a compliant peak file can lack both P- and Q-values. Landt 2012 Box 4 lists both without "optional" and adds the genome reference to peak metadata.
- 2009 excludes DNase and FAIRE from broad regions. 2010 and 2011 v2 drop the exclusion. Landt 2012 names only TF ChIP as a point-source example.
- "Tier 3" lines, exempt from input submission, are not defined.
- Replicate wording varies. 2010 asks for a sign-off that the experiment was done in duplicate. 2011 v2 says "at least two must be performed". Landt 2012 metadata ask only for the replicate type.
- Concordance evidence moves from the "top 40% rule" (2010, 2011 v2) to "overlap results or IDR" (Landt 2012).
- 2010 phrases the rubric as one the DCC "should implement". 2011 v2 titles Section V "Recommended Standards" but says "requirements have been established for data sharing".
- 2011 v2 drops the free-form peak caller field and the public-software aim. Its processed-data lists still ask for "Metadata, including peak caller version used (see below)". Item 5 of its metadata list names the algorithm and parameters but not the version.
- The 2010 rubric sign-offs (items 1 and 2) name no test.
- 2010 is dated April 09, 2010, but Section V carries notes dated 5-30-2010 and 5/30/2010.
- 2010 and 2011 v2 release failing data "after repeated attempts" without a count. Landt 2012 lets mammalian point-source data that fail its IDR criteria be deposited "provided that at least three experimental replicates have been attempted".

# Audits

> Snapshot of <https://www.encodeproject.org/data-standards/audits/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# Audits

### What are audits?

​The ENCODE Data Coordination Center has implemented a system of audits, or flags, to provide additional information to the research community about the quality of the data on the portal. These flags may indicate an error in the experimental metadata, or may indicate that the data itself does not meet some aspect of the [Consortium's standards](https://www.encodeproject.org/data-standards/). The flag's color corresponds to the severity of the problem.    

#### Read Coverage Audits

<table>
<thead>
<tr>
<th><strong>Audit message</strong></th>
<th><strong>Explanation</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>Control insufficient read depth<br />
Control low read depth</td>
<td>A ChIP-seq control should be sequenced to similar depth as the experiment. For this experiment, the control depth is insufficient.</td>
</tr>
<tr>
<td>Extremely low read depth<br />
Insufficient read depth<br />
Low read depth</td>
<td>The read depth of the alignment files is below the given threshold for the assay type. For a list of standards for individual assay types, see the following links:<br />
<a href="https://www.encodeproject.org/data-standards/wgbs/">WGBS</a><br />
<a href="https://www.encodeproject.org/data-standards/dnase-seq/​">DNase-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/long-rnas/">Bulk RNA-seq, shRNA, CRISPR knockdown</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/small-rnas/">Small RNA-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rampage/">RAMPAGE</a><br />
<a href="https://www.encodeproject.org/chip-seq/">ChIP-seq</a><br />
<a href="https://www.encodeproject.org/atac-seq/">ATAC-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-seq/">microRNA-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-counts/">microRNA counts</a><br />
<a href="https://www.encodeproject.org/rbns/">RNA Bind-n-Seq</a><br />
<a href="https://www.encodeproject.org/eclip/">eCLIP</a></td>
</tr>
<tr>
<td>Extremely low coverage<br />
Insufficient coverage<br />
Low coverage</td>
<td>Each <a href="https://www.encodeproject.org/data-standards/terms/#replication">biological replicate</a> processed by the WGBS paired-end pipeline is recommended to have <a href="https://www.encodeproject.org/wgbs/">30X coverage</a>. Replicates with coverage between 25X - 30X receive a "Low coverage" audit; replicates with coverage between 5X - 25X receive an "Insufficient coverage" audit; and replicates with coverage less than 5X receive an "Extremely low coverage" audit.</td>
</tr>
<tr>
<td>Insufficient number of aligned reads<br />
Borderline number of aligned reads</td>
<td>The alignments file for a micro RNA-seq experiment did not have a sufficient number of aligned reads. For more information on data standards, please visit the <a href="https://www.encodeproject.org/microrna/microrna-seq-encode4/">micro-RNA-seq page</a>.</td>
</tr>
</tbody>
</table>

#### Replication Audits

<table>
<thead>
<tr>
<th style="text-align: left;"><strong>Audit message</strong></th>
<th style="text-align: left;"><strong>Explanation</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Insufficient replicate concordance<br />
Low replicate concordance<br />
Borderline replicate concordance</td>
<td style="text-align: left;"><p>The value for the metric used to measure replicate concordance is below the given threshold for the assay type, so the experiment has been flagged for poor reproducibility. For a list of standards for individual assay types, see the following links:</p>
<p><a href="https://www.encodeproject.org/data-standards/wgbs/">WGBS</a><br />
<a href="https://www.encodeproject.org/data-standards/dnase-seq/​">DNase-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/long-rnas/">Bulk RNA-seq, shRNA, CRISPR knockdown</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/small-rnas/">Small RNA-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rampage/">RAMPAGE</a><br />
<a href="https://www.encodeproject.org/chip-seq/">ChIP-seq</a><br />
<a href="https://www.encodeproject.org/atac-seq/">ATAC-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-seq/">microRNA-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-counts/">microRNA counts</a><br />
<a href="https://www.encodeproject.org/rbns/">RNA Bind-n-Seq</a><br />
<a href="https://www.encodeproject.org/eclip/">eCLIP</a></p></td>
</tr>
<tr>
<td style="text-align: left;">Unreplicated experiment</td>
<td style="text-align: left;">ENCODE experiments (excluding ENTEx/GTEx) are required to have at least two biological replicates. Experiments using samples from the GTEx consortium do not require more than one replicate because of the limited availability of tissues.  </td>
</tr>
<tr>
<td style="text-align: left;"><strong></strong>Inconsistent replicate</td>
<td style="text-align: left;">A file came from a replicate that belongs to a different experiment from the one in which the file is found, or the replicate numbers do not match between parent and derived files. </td>
</tr>
<tr>
<td style="text-align: left;">Technical replicates with not identical biosample</td>
<td style="text-align: left;">Two <a href="https://www.encodeproject.org/data-standards/terms/#replication">technical replicates</a> do not share the same biosample. </td>
</tr>
<tr>
<td style="text-align: left;">Replicate with no library</td>
<td style="text-align: left;">The library created from the experimental replicate was not uploaded and/or attached to the replicate.</td>
</tr>
<tr>
<td style="text-align: left;">Insufficient number of reproducible peaks Moderate number of reproducible peaks</td>
<td style="text-align: left;">The ATAC-seq dataset lacks sufficient numbers of reproducible peaks in the overlap peaks or IDR thresholded peaks files.</td>
</tr>
</tbody>
</table>

#### [Library Complexity](https://www.encodeproject.org/data-standards/terms/#library) Audits

<table>
<thead>
<tr>
<th style="text-align: left;"><strong>Audit message</strong></th>
<th style="text-align: left;"><strong>Explanation</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Severe bottlenecking<br />
Mild to moderate bottlenecking</td>
<td style="text-align: left;">Bottlenecking for ChIP-seq assays is measured using <a href="https://www.encodeproject.org/data-standards/terms/#library">PCR Bottlenecking Coefficients 1 and 2</a> (PBC1 and PBC2). For more information on the expected values, see the <a href="https://www.encodeproject.org/data-standards/chip-seq/">ChIP-seq standards page</a>.</td>
</tr>
<tr>
<td style="text-align: left;">Insufficient library complexity<br />
Moderate library complexity<br />
Poor library complexity</td>
<td style="text-align: left;">Library complexity for ChIP-seq experiments is measured using the <a href="https://www.encodeproject.org/data-standards/terms/#library">Non-Redundant Fraction</a>. For more information on the expected values for NRF, see the <a href="https://www.encodeproject.org/data-standards/chip-seq/">ChIP-seq standards page</a>. </td>
</tr>
</tbody>
</table>

#### Enrichment Audits

<table>
<thead>
<tr>
<th style="text-align: left;"><strong>Audit Message</strong></th>
<th style="text-align: left;"><strong>Explanation</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Extremely low SPOT score<br />
Insufficient SPOT score<br />
Low SPOT score</td>
<td style="text-align: left;">The <a href="https://www.encodeproject.org/data-standards/terms/#enrichment">SPOT (Signal Portion of Tags) score</a> is a measure of enrichment used in DNase-seq experiments. For more information on the expected values, please see the <a href="https://www.encodeproject.org/data-standards/dnase-seq/">DNase-seq standards page</a>.</td>
</tr>
<tr>
<td style="text-align: left;">Extremely low TSS enrichment<br />
Moderate TSS enrichment<br />
Low TSS enrichment</td>
<td style="text-align: left;">Transcription Start Site (TSS) enrichment values for alignments in an ATAC-seq assay are below standards. The ideal value is &gt; 7, with 5-7 being acceptable and &lt; 5 being non compliant. For more information on the expected values, please see the <a href="https://www.encodeproject.org/data-standards/atac-seq/">ATAC-seq standards page</a>.</td>
</tr>
<tr>
<td style="text-align: left;">Low FRiP score</td>
<td style="text-align: left;">FRiP (fraction of reads in called peak regions) for overlap peak files in an ATAC-seq assay are below standards. The ideal value is &gt;0.3, with 0.2-0.3 being acceptable and &lt;0.2 being non compliant. For more information on the expected values, please see the <a href="https://www.encodeproject.org/data-standards/atac-seq/">ATAC-seq standards page</a>.</td>
</tr>
</tbody>
</table>

#### [Uniform Pipeline](https://www.encodeproject.org/pipelines/) Requirements

<table>
<thead>
<tr>
<th style="text-align: left;"><strong>Audit message</strong></th>
<th style="text-align: left;"><strong>Explanation</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Missing spikeins</td>
<td style="text-align: left;"><a href="https://www.encodeproject.org/data-standards/rna-seq/long-rnas/">Bulk RNA-seq, shRNA knockdown</a>, and <a href="https://www.encodeproject.org/data-standards/rna-seq/long-rnas/">CRISPR editing followed by RNA-seq</a> assays require spike-ins, but they are missing in the given experiment.</td>
</tr>
<tr>
<td style="text-align: left;">Missing RNA fragment size</td>
<td style="text-align: left;">The library created for an RNA-seq experiment lacks information on the size of the library fragments.</td>
</tr>
<tr>
<td style="text-align: left;">Missing input control</td>
<td style="text-align: left;">ChIP-seq experiments must have at least one input control, but the control given is not an input control. For example, it may be a mock immunoprecipitation instead.</td>
</tr>
<tr>
<td style="text-align: left;">Missing run_type</td>
<td style="text-align: left;">Fastq file does not contain information on the run type used to produce it (single vs paired end).</td>
</tr>
<tr>
<td style="text-align: left;">Inconsistent control read length<br />
&#10;Inconsistent control run type<br />
Inconsistent control platform</td>
<td style="text-align: left;">The uniform pipelines expect that the controls and the files they control share identical run_types and read lengths. Otherwise, trimming may be required. Similarly, the pipelines expect the same or comparable sequencing platforms.</td>
</tr>
<tr>
<td style="text-align: left;">Inconsistent platforms</td>
<td style="text-align: left;">The uniform pipelines expect files within an experiment to have been produced from the same or comparable sequencing platforms.</td>
</tr>
<tr>
<td style="text-align: left;">Mixed read lengths<br />
Mixed run types</td>
<td style="text-align: left;">A single experiment contains fastq files with different read lengths and/or run types, either within or among replicates.</td>
</tr>
<tr>
<td style="text-align: left;">Extremely low read length<br />
Insufficient read length<br />
Low read length</td>
<td style="text-align: left;">The sequencing read length is below the given threshold for the assay type. For a list of standards for individual assay types, see the following links:<br />
<a href="https://www.encodeproject.org/data-standards/wgbs/">WGBS</a><br />
<a href="https://www.encodeproject.org/data-standards/dnase-seq/​">DNase-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/long-rnas/">Bulk RNA-seq, shRNA, CRISPR knockdown</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/small-rnas/">Small RNA-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rampage/">RAMPAGE</a><br />
<a href="https://www.encodeproject.org/chip-seq/">ChIP-seq</a><br />
<a href="https://www.encodeproject.org/atac-seq/">ATAC-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-seq/">microRNA-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-counts/">microRNA counts</a><br />
<a href="https://www.encodeproject.org/rbns/">RNA Bind-n-Seq</a><br />
<a href="https://www.encodeproject.org/eclip/">eCLIP</a></td>
</tr>
<tr>
<td style="text-align: left;">Non-standard run_type</td>
<td style="text-align: left;">The pipelines for specific assay types require either single-end or paired-end sequencing, but the required sequencing type was not performed. For a list of standards for individual assay types, see the following links:<br />
<a href="https://www.encodeproject.org/data-standards/wgbs/">WGBS</a><br />
<a href="https://www.encodeproject.org/data-standards/dnase-seq/​">DNase-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/long-rnas/">Bulk RNA-seq, shRNA, CRISPR knockdown</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/small-rnas/">Small RNA-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rampage/">RAMPAGE</a><br />
<a href="https://www.encodeproject.org/chip-seq/">ChIP-seq</a><br />
<a href="https://www.encodeproject.org/atac-seq/">ATAC-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-seq/">microRNA-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-counts/">microRNA counts</a><br />
<a href="https://www.encodeproject.org/rbns/">RNA Bind-n-Seq</a><br />
<a href="https://www.encodeproject.org/eclip/">eCLIP</a></td>
</tr>
<tr>
<td style="text-align: left;">Not compliant platform</td>
<td style="text-align: left;">The sequencing platform used is not compatible with the processing pipeline. For a list of standards for individual assay types, see the following links:<br />
<a href="https://www.encodeproject.org/data-standards/wgbs/">WGBS</a><br />
<a href="https://www.encodeproject.org/data-standards/dnase-seq/​">DNase-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/long-rnas/">Bulk RNA-seq, shRNA, CRISPR knockdown</a><br />
<a href="https://www.encodeproject.org/data-standards/rna-seq/small-rnas/">Small RNA-seq</a><br />
<a href="https://www.encodeproject.org/data-standards/rampage/">RAMPAGE</a><br />
<a href="https://www.encodeproject.org/chip-seq/">ChIP-seq</a><br />
<a href="https://www.encodeproject.org/atac-seq/">ATAC-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-seq/">microRNA-seq</a><br />
<a href="https://www.encodeproject.org/microrna/microrna-counts/">microRNA counts</a><br />
<a href="https://www.encodeproject.org/rbns/">RNA Bind-n-Seq</a><br />
<a href="https://www.encodeproject.org/eclip/">eCLIP</a></td>
</tr>
</tbody>
</table>

#### Antibody Audits

<table>
<thead>
<tr>
<th style="text-align: left;"><strong>Audit message</strong></th>
<th style="text-align: left;"><strong>Explanation</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Duplicate lane review</td>
<td style="text-align: left;">The flagged antibody has already been reviewed for the biosample type in question. For example, there may be multiple lanes in a single western blot that are characterizing the antibody is K562. For more on antibody standards, please see the antibody characterization guidelines for <a href="https://www.encodeproject.org/documents/c7cb0632-7e5f-455e-9119-46a54f160711/@@download/attachment/ENCODE_Approved_May_2016_TF_Antibody%20Characterization_Guidelines.pdf">transcription factors</a>, <a href="https://www.encodeproject.org/documents/4bb40778-387a-47c4-ab24-cebe64ead5ae/@@download/attachment/ENCODE_Approved_Oct_2016_Histone_and_Chromatin_associated_Proteins_Antibody_Characterization_Guidelines.pdf">chromatin remodelers</a>, <a href="https://www.encodeproject.org/documents/fb70e2e7-8a2d-425b-b2a0-9c39fa296816/@@download/attachment/ENCODE_Approved_Nov_2016_RBP_Antibody_Characterization_Guidelines.pdf">RNA binding proteins</a>, and <a href="https://www.encodeproject.org/documents/2c01f6b3-f04d-453d-9a32-4b1ecf1f26aa/@@download/attachment/ENCODE_Approved_Nov_2016_fRIP_Antibody_Characterization_Guidelines.pdf">antibodies used in fRIP assays</a>. </td>
</tr>
<tr>
<td style="text-align: left;">Not tagged antibody<br />
Inconsistent target</td>
<td style="text-align: left;">The antibody and experimental targets of interest do not match. This may be because the experimental target is tagged and the antibody does not apply to that tag, or because the target proteins are completely different between the antibody and the experiment. </td>
</tr>
<tr>
<td style="text-align: left;">Mismatched tag target</td>
<td style="text-align: left;">The antibody target and experiment target are not the same. This may be a metadata error and should be clarified by the lab and the DCC if they are meant to be the same, or if the experiment is using a different antibody with the proper target.</td>
</tr>
<tr>
<td style="text-align: left;">Not eligible antibody</td>
<td style="text-align: left;">The antibody used in the experiment is not eligible for use because it has not been fully characterized in the biosample type (e.g. liver tissue or K562) used by the experiment.</td>
</tr>
<tr>
<td style="text-align: left;">Partially characterized antibody</td>
<td style="text-align: left;">The antibody used in the experiment has either its primary or secondary characterization (but not both) for the given biosample (e.g. liver tissue or K562) used by the experiment.</td>
</tr>
<tr>
<td style="text-align: left;">Uncharacterized antibody</td>
<td style="text-align: left;">The antibody used in the experiment is lacking a primary and secondary characterization for the given biosample (e.g. liver tissue or K562) used by the experiment.</td>
</tr>
<tr>
<td style="text-align: left;">Antibody not characterized to standard</td>
<td style="text-align: left;">The antibody used in the experiment has non-compliant characterizations, and no compliant characterizations for in the biosample type (e.g. liver tissue or K562) used by the experiment.</td>
</tr>
<tr>
<td style="text-align: left;">Antibody characterized with exemption</td>
<td style="text-align: left;">The antibody used in the assay did not pass its primary characterization test, but the secondary characterization was able to rescue the primary and it passed with exemption.<strong> </strong>For more on antibody standards, please see the antibody characterization guidelines for <a href="https://www.encodeproject.org/documents/c7cb0632-7e5f-455e-9119-46a54f160711/@@download/attachment/ENCODE_Approved_May_2016_TF_Antibody%20Characterization_Guidelines.pdf">transcription factors</a>, <a href="https://www.encodeproject.org/documents/4bb40778-387a-47c4-ab24-cebe64ead5ae/@@download/attachment/ENCODE_Approved_Oct_2016_Histone_and_Chromatin_associated_Proteins_Antibody_Characterization_Guidelines.pdf">chromatin remodelers</a>, <a href="https://www.encodeproject.org/documents/fb70e2e7-8a2d-425b-b2a0-9c39fa296816/@@download/attachment/ENCODE_Approved_Nov_2016_RBP_Antibody_Characterization_Guidelines.pdf">RNA binding proteins</a>, and <a href="https://www.encodeproject.org/documents/2c01f6b3-f04d-453d-9a32-4b1ecf1f26aa/@@download/attachment/ENCODE_Approved_Nov_2016_fRIP_Antibody_Characterization_Guidelines.pdf">antibodies used in fRIP assays</a>. </td>
</tr>
<tr>
<td style="text-align: left;">Characterizations not reviewed</td>
<td style="text-align: left;">The antibody has old characterizations, perhaps from previous iterations of ENCODE, that were not reviewed or submitted for review. </td>
</tr>
<tr>
<td style="text-align: left;">No characterizations submitted</td>
<td style="text-align: left;">The antibody lacks any attempt at characterization. For more on antibody standards, please see the antibody characterization guidelines for <a href="https://www.encodeproject.org/documents/c7cb0632-7e5f-455e-9119-46a54f160711/@@download/attachment/ENCODE_Approved_May_2016_TF_Antibody%20Characterization_Guidelines.pdf">transcription factors</a>, <a href="https://www.encodeproject.org/documents/4bb40778-387a-47c4-ab24-cebe64ead5ae/@@download/attachment/ENCODE_Approved_Oct_2016_Histone_and_Chromatin_associated_Proteins_Antibody_Characterization_Guidelines.pdf">chromatin remodelers</a>, <a href="https://www.encodeproject.org/documents/fb70e2e7-8a2d-425b-b2a0-9c39fa296816/@@download/attachment/ENCODE_Approved_Nov_2016_RBP_Antibody_Characterization_Guidelines.pdf">RNA binding proteins</a>, and <a href="https://www.encodeproject.org/documents/2c01f6b3-f04d-453d-9a32-4b1ecf1f26aa/@@download/attachment/ENCODE_Approved_Nov_2016_fRIP_Antibody_Characterization_Guidelines.pdf">antibodies used in fRIP assays</a>. </td>
</tr>
<tr>
<td style="text-align: left;">No primary characterizations</td>
<td style="text-align: left;">The antibody does not have any attempt at primary characterization in accordance with the ENCODE antibody characterization standards. For more on antibody standards, please see the antibody characterization guidelines for <a href="https://www.encodeproject.org/documents/c7cb0632-7e5f-455e-9119-46a54f160711/@@download/attachment/ENCODE_Approved_May_2016_TF_Antibody%20Characterization_Guidelines.pdf">transcription factors</a>, <a href="https://www.encodeproject.org/documents/4bb40778-387a-47c4-ab24-cebe64ead5ae/@@download/attachment/ENCODE_Approved_Oct_2016_Histone_and_Chromatin_associated_Proteins_Antibody_Characterization_Guidelines.pdf">chromatin remodelers</a>, <a href="https://www.encodeproject.org/documents/fb70e2e7-8a2d-425b-b2a0-9c39fa296816/@@download/attachment/ENCODE_Approved_Nov_2016_RBP_Antibody_Characterization_Guidelines.pdf">RNA binding proteins</a>, and <a href="https://www.encodeproject.org/documents/2c01f6b3-f04d-453d-9a32-4b1ecf1f26aa/@@download/attachment/ENCODE_Approved_Nov_2016_fRIP_Antibody_Characterization_Guidelines.pdf">antibodies used in fRIP assays</a>. </td>
</tr>
<tr>
<td style="text-align: left;">No secondary characterizations</td>
<td style="text-align: left;">The antibody does not have any attempt at secondary characterization in accordance with the ENCODE antibody characterization standards. For more on antibody standards, please see the antibody characterization guidelines for <a href="https://www.encodeproject.org/documents/c7cb0632-7e5f-455e-9119-46a54f160711/@@download/attachment/ENCODE_Approved_May_2016_TF_Antibody%20Characterization_Guidelines.pdf">transcription factors</a>, <a href="https://www.encodeproject.org/documents/4bb40778-387a-47c4-ab24-cebe64ead5ae/@@download/attachment/ENCODE_Approved_Oct_2016_Histone_and_Chromatin_associated_Proteins_Antibody_Characterization_Guidelines.pdf">chromatin remodelers</a>, <a href="https://www.encodeproject.org/documents/fb70e2e7-8a2d-425b-b2a0-9c39fa296816/@@download/attachment/ENCODE_Approved_Nov_2016_RBP_Antibody_Characterization_Guidelines.pdf">RNA binding proteins</a>, and <a href="https://www.encodeproject.org/documents/2c01f6b3-f04d-453d-9a32-4b1ecf1f26aa/@@download/attachment/ENCODE_Approved_Nov_2016_fRIP_Antibody_Characterization_Guidelines.pdf">antibodies used in fRIP assays</a>. </td>
</tr>
<tr>
<td style="text-align: left;">Need compliant primaries</td>
<td style="text-align: left;">Any and all attempts at primary characterization of this antibody do not meet the standards.</td>
</tr>
<tr>
<td style="text-align: left;">Need compliant secondaries</td>
<td style="text-align: left;">Any and all attempts at secondary characterization of this antibody do not meet the standards.</td>
</tr>
</tbody>
</table>

#### Metadata Audits

<table>
<thead>
<tr>
<th style="text-align: left;"><strong>Audit message</strong></th>
<th style="text-align: left;"><strong>Explanation</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align: left;">Missing antibody<br />
Missing biosample<br />
Missing biosample_term_id<br />
Missing biosample_term_name<br />
Missing biosample type<br />
Missing donor<br />
Missing target<br />
Missing documents</td>
<td style="text-align: left;">If an assay type requires any of the following, but the required property was not provided, the experiment is given a flag: antibody, ontology name or ID for the assay type, biosample used to make the library, the ontology term or ID for the biosample, the type of biosample (e.g. immortalized cell line or tissue), the biosample’s donor, the target or molecule of interest, the transfection type (i.e. stable or transient), or protocol documents.</td>
</tr>
<tr>
<td style="text-align: left;">Multiple paired_with</td>
<td style="text-align: left;">The raw files are the product of paired ended sequencing, and the file in question has been marked as paired with more than one other file, which is not allowed. </td>
</tr>
<tr>
<td style="text-align: left;">Missing raw data in replicate</td>
<td style="text-align: left;">Each experimental replicate's library must have a corresponding raw sequencing file, such as a fastq.</td>
</tr>
<tr>
<td style="text-align: left;">Missing derived_from</td>
<td style="text-align: left;">A processed file should have information on the files from which it was derived. For example, an alignment file should indicate which raw data files and references indices were used to create it.</td>
</tr>
<tr>
<td style="text-align: left;">Missing control alignments</td>
<td style="text-align: left;">A peaks file must specify the control alignments used to generate it.</td>
</tr>
<tr>
<td style="text-align: left;">Missing possible controls,<br />
Missing possible controls<br />
Mismatched control<br />
Missing controlled_by</td>
<td style="text-align: left;">ChIP-seq, RAMPAGE, and CAGE experiments all require controls. A flag appears if the control is missing or has a different biosample type from the experiment it controls (e.g. K562 versus MCF-7). A flag will also appear if the control files are not matched to corresponding experimental files; this information is stored in a property called "controlled_by" in the experimental file object. Please note that the "missing possible controls" assay has different flag colors depending on the assay type and the project phase. </td>
</tr>
<tr>
<td style="text-align: left;">Missing genotype<br />
Missing external identifiers</td>
<td style="text-align: left;">Biosample donors for worms and flies (<em>Caenorhabditis</em> and <em>Drosophila</em>) must have their genotypes listed in accordance with the nomenclature rules (<a href="http://flybase.org/wiki/FlyBase:Nomenclature">for fly</a>, <a href="http://www.wormbase.org/about/userguide/nomenclature#k89607hgcf24ea13jbid5--10">for worm</a>), and must have external references (e.g. GEO/SAMN IDs) listed. </td>
</tr>
<tr>
<td style="text-align: left;">Inconsistent ontology term</td>
<td style="text-align: left;">The ontology term does not match the ontology ID provided.<strong> </strong></td>
</tr>
<tr>
<td style="text-align: left;">Inconsistent depleted_in_term length<br />
Depleted_in length mismatch</td>
<td style="text-align: left;">Some tissue type was removed from the biosample before library creation. The list of ontology term names of the tissues removed does not match the list of the ontology term IDs in either the biosample or the library. </td>
</tr>
<tr>
<td style="text-align: left;"><strong></strong>Inconsistent organism<br />
Inconsistent donor<br />
Inconsistent library biosample<br />
Inconsistent age<br />
Inconsistent sex</td>
<td style="text-align: left;">The biosamples used for each replicate within an experiment do not share the given properties.</td>
</tr>
<tr>
<td style="text-align: left;">Inconsistent paired_with</td>
<td style="text-align: left;">Two read pair files from paired-end sequencing are annotated as belonging to different experiment replicates.  </td>
</tr>
<tr>
<td style="text-align: left;">Missing paired_with</td>
<td style="text-align: left;">A paired end fastq in this dataset is missing metadata on its paired file.</td>
</tr>
<tr>
<td style="text-align: left;">Inconsistent read count</td>
<td style="text-align: left;">A fastq in this dataset is paired with a fastq with a different read count.</td>
</tr>
<tr>
<td style="text-align: left;"><strong></strong>Inconsistent target of control experiment</td>
<td style="text-align: left;">A control experiment does not have its target annotated as “control” in the metadata. Rather, the target is some transcription factor or chromatin modifier.</td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;"></td>
</tr>
<tr>
<td style="text-align: left;">Inconsistent control</td>
<td style="text-align: left;">The experiment and its control were not performed on the same type of biosample, e.g. same cell line or tissue type; the control file is of a different format than the experimental file being controlled, e.g. fastq vs. idat; or the control file being used is from a control experiment that is not listed in the possible_controls property of the experiment. </td>
</tr>
<tr>
<td style="text-align: left;"><strong></strong>Inconsistent <strong></strong> document_type</td>
<td style="text-align: left;">A document has been attached to a file, but does not describe the file format specifications for that file. </td>
</tr>
<tr>
<td style="text-align: left;"><strong></strong>Inconsistent <strong></strong> mutated_gene <strong></strong> organism</td>
<td style="text-align: left;">The organism from which the biosample came does not match the organism of the mutated gene in the donor. Donor mutated_gene should be of the same species as the donor and biosample. </td>
</tr>
<tr>
<td style="text-align: left;">Invalid donor mutated_gene</td>
<td style="text-align: left;">Donor mutated genes should not be tags, controls, recombinant proteins, or modifications</td>
</tr>
<tr>
<td style="text-align: left;">Invalid dates</td>
<td style="text-align: left;">The date that the cell culture was harvested precedes the date on which the culture was started.  </td>
</tr>
<tr>
<td style="text-align: left;">Invalid possible_control</td>
<td style="text-align: left;">The experiment being used as a control is not designated as a control in the metadata.</td>
</tr>
<tr>
<td style="text-align: left;">Invalid depleted_in_term_id</td>
<td style="text-align: left;">Before sequencing the library, a specific type of nucleic acid (e.g. polyA RNA) was removed. The nucleic acid that was sequenced is listed as the same nucleic acid that was removed.</td>
</tr>
<tr>
<td style="text-align: left;">Unexpected step_run</td>
<td style="text-align: left;">The incorrect pipeline step was attached to the file in question, e.g. a peak calling step that outputs peak files was attached to an alignment file instead.</td>
</tr>
<tr>
<td style="text-align: left;">Missing analysis step_run</td>
<td style="text-align: left;">A processed file in the dataset has no metadata about the pipeline run that generated it.</td>
</tr>
<tr>
<td style="text-align: left;">Matching md5 sums</td>
<td style="text-align: left;">A processed file in this dataset is identical to another file.</td>
</tr>
<tr>
<td style="text-align: left;">Lacking processed data</td>
<td style="text-align: left;">The dataset has no downstream processed data.</td>
</tr>
<tr>
<td style="text-align: left;">Missing genetic modification characterization<br />
Missing genetic modification characterization</td>
<td style="text-align: left;">A genetic modification used in this experiment is lacking a characterization.</td>
</tr>
<tr>
<td style="text-align: left;">Missing biosample characterization<br />
Missing biosample characterization</td>
<td style="text-align: left;">A genetically modified biosample used in this experiment is lacking a characterization.</td>
</tr>
<tr>
<td style="text-align: left;">File validation error</td>
<td style="text-align: left;">A file in the dataset failed to pass automated validation checks during the submission process.</td>
</tr>
<tr>
<td style="text-align: left;">Missing fragmentation method</td>
<td style="text-align: left;">Hi-C libraries must specify the fragmentation method used to generate them.</td>
</tr>
<tr>
<td style="text-align: left;">Missing genetic modification reagents</td>
<td style="text-align: left;">Genetic modifications should specify any reagents used to perform the modification.</td>
</tr>
<tr>
<td style="text-align: left;">Missing queried RNP size range</td>
<td style="text-align: left;">eCLIP libraries should specify the queried RNP size range.</td>
</tr>
<tr>
<td style="text-align: left;">Inconsistent assembly</td>
<td style="text-align: left;">A file in this dataset is aligned to an assembly different from the assembly of the file it derives from.</td>
</tr>
<tr>
<td style="text-align: left;">Improper control type of control experiment</td>
<td style="text-align: left;">The experiment lacks a control experiment with control_type of "input library" or "wild type".</td>
</tr>
<tr>
<td style="text-align: left;">Missing control type of control experiment</td>
<td style="text-align: left;">The control experiment has no control_type specified.</td>
</tr>
<tr>
<td style="text-align: left;">Unexpected target of control experiment</td>
<td style="text-align: left;">The experiment is a control experiment, but has a specified target.</td>
</tr>
</tbody>
</table>

#### Dataset Consistency Audits

| **Audit Message** | **Explanation** |
|:---|:---|
| Missing reference | Publication file sets should be linked to a specific publication. |
| Missing IHEC required assay | Reference Epigenome datasets must have at least one of each of the [IHEC required assays](http://ihec-epigenomes.org/research/reference-epigenome-standards/). |
| Multiple donors in reference epigenome | A reference epigenome dataset has experiments conducted in biosamples from more than one donor. |
| Multiple biosample treatments in reference epigenome | A reference epigenome dataset should not have multiple kinds of treatments between experiments, even if type of the biosample used is the same. |

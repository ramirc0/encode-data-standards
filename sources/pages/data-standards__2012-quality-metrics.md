# 2012 Quality Metrics for integrative analysis publications

> Snapshot of <https://www.encodeproject.org/data-standards/2012-quality-metrics/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

## 2012 Quality Metrics for integrative analysis publications

## Overview

The ENCODE consortium analyzes the quality of the data produced using a variety of metrics. Quality metrics are described on this page that have been developed to enable comparison and standardized processing of the data included in the [integrative analysis publications](https://www.encodeproject.org/about/2012-integrative-analysis/). This page includes links to spreadsheets showing quality metrics for these ENCODE datasets, along with descriptions of what these metrics are, and what they appear to measure.

## Quality metric spreadsheets

Datasets are divided into DNase-seq, FAIRE-seq, TF ChIP-seq, Histone ChIP-seq, and ChIP Controls. The ReadMe worksheet provides a summary description of the metrics (described in more detail below). The *Assays*, *Cells*, and *Treatments* are defined in the ENCODE Controlled Vocabulary of registered terms. The *Identifiers* reference the dataset at UCSC (via the Table Browser, metaDb table) and the ENCODE analysis site (filenames).

***Download spreadsheets in:***   [Excel format (.xls)](https://docs.google.com/spreadsheet/pub?key=0AvQL5qBL6AfEdDVaa1FNZWZSdE8zX1hwT0RiTWR0M0E&output=xls)   [OpenOffice spreadsheet format (.ods)](https://docs.google.com/spreadsheet/pub?key=0AvQL5qBL6AfEdDVaa1FNZWZSdE8zX1hwT0RiTWR0M0E&output=ods)  

## Definitions of quality metrics

> **Uniquely mappable reads (N_uniq map reads):**\
> The count of the number of sequence reads for this sample that can be aligned to a single genomic location; this does not distinguish between reads that were obtained multiple times (redundant reads) and reads obtained only once (non-redundant reads). A larger number of reads from a sufficiently complex library increases the chances of finding all true binding sites; however, the number of reads required is not known with certainty, and likely depends on enrichment, antibody quality in ChIP experiments, and the fraction of the genome containing the feature being measured.
>
> **Self-consistent peaks, IDR n (Self Cons IDR):**\
> An estimate of the number of enriched regions in a single sample. A dataset is divided into 2 pseudo-replicates that are analyzed by peak-calling at relaxed stringency followed by IDR filtering at the indicated IDR threshold.
>
> **Replicate-consistent peaks, IDR n (Rep Cons IDR):**\
> The number of enriched regions, determined using IDR (Irreproducible Discovery Rate) using this sample and a replicate. Potential enriched regions are identified using a peak caller at very low stringency, then the IDR method is used to determine which peaks are signal and which are noise, at the indicated IDR threshold. As this analysis is performed using pairs of datasets, the output number of peaks is identical for these two datasets using this method.
>
> **Signal Portion of Tags (SPOT):**\
> A measure of enrichment, analogous to the commonly used fraction of reads in peaks metric. SPOT calculates the fraction of reads that fall in tag-enriched regions identified using the Hotspot program, ([Hotspot](https://www.encodeproject.org/software/hotspot/) and [SPOT](https://www.encodeproject.org/software/spot/) are described on the [ENCODE Software Tools](https://www.encodeproject.org/software) pages) from a sample of 5 million reads. Note that because methods of measuring enrichment based on determining the fraction of reads that fall in peaks are sensitive to the determination of enriched regions, comparison is possible only when using the identical peak caller and parameters. Larger SPOT values indicate higher signal to noise; 1.0 is the maximum possible value (all reads are signal) and 0 is the minimum possible value (all reads are noise). For FAIRE, more than 10 million reads are typically required to reliably detect peaks.
>
> **PCR Bottleneck Coefficient (PBC):**\
> A measure of library complexity, i.e. how skewed the distribution of read counts per location is towards 1 read per location.
>
> PBC = N1/Nd
>
> (where N1= number of genomic locations to which EXACTLY one unique mapping read maps, and Nd = the number of genomic locations to which AT LEAST one unique mapping read maps, i.e. the number of non-redundant, unique mapping reads).
>
> Provisionally, 0-0.5 is severe bottlenecking, 0.5-0.8 is moderate bottlenecking, 0.8-0.9 is mild bottlenecking, while 0.9-1.0 is no bottlenecking. Very low values can indicate a technical problem, such as PCR bias, or a biological finding, such as a very rare genomic feature. Nuclease-based assays (DNase, MNase) detecting features with base-pair resolution (transcription factor footprints, positioned nucleosomes) are expected to recover the same read multiple times, resulting in a lower PBC score for these assays. Note that the most complex library, random DNA, would approach 1.0, thus the very highest values can indicate technical problems with libraries. It is the practice for some labs outside of ENCODE to remove redundant reads; after this has been done, the value for this metric is 1.0, and this metric is not meaningful. 82% of TF ChIP, 89% of His ChIP, 77% of DNase, 98% of FAIRE, and 97% of control ENCODE datasets have no or mild bottlenecking.
>
> **Normalized Strand Cross-correlation coefficient (NSC):**\
> A measure of enrichment derived without dependence on prior determination of enriched regions. Forward and reverse strand read coverage signal tracks are computed (number of unique mapping read starts at each base in the genome on the + and - strand counted separately). The forward and reverse tracks are shifted towards and away from each other by incremental distances and for each shift, the Pearson correlation coefficient is computed. In this way, a cross-correlation profile is computed, representing the correlation between forward and reverse strand coverage at different shifts. The highest cross-correlation value is obtained at a strand shift equal to the predominant fragment length in the dataset as a result of clustering/enrichment of relative fixed-size fragments around the binding sites of the target factor or feature.
>
> The NSC is the ratio of the maximal cross-correlation value (which occurs at strand shift equal to fragment length) divided by the background cross-correlation (minimum cross-correlation value over all possible strand shifts). Higher values indicate more enrichment, values less than 1.1 are relatively low NSC scores, and the minimum possible value is 1 (no enrichment). This score is sensitive to technical effects; for example, high-quality antibodies such as H3K4me3 and CTCF score well for all cell types and ENCODE production groups, and variation in enrichment in particular IPs is detected as stochastic variation. This score is also sensitive to biological effects; narrow marks score higher than broad marks (H3K4me3 vs H3K36me3, H3K27me3) for all cell types and ENCODE production groups, and features present in some individual cells, but not others, in a population are expected to have lower scores.
>
> **Relative Strand Cross-correlation coefficient (RSC):**\
> A measure of enrichment derived without dependence on prior determination of enriched regions. Forward and reverse strand read coverage signal tracks are computed (number of unique mapping read starts at each base in the genome on the + and - strand counted separately). The forward and reverse tracks are shifted towards and away from each other by incremental distances and for each shift, the Pearson correlation coefficient is computed. In this way, a cross-correlation profile is computed representing the correlation values between forward and reverse strand coverage at different shifts. The highest cross-correlation value is obtained at a strand shift equal to the predominant fragment length in the dataset as a result of clustering/enrichment of relative fixed-size fragments around the binding sites of the target factor. For short-read datasets (\< 100 bp reads) and large genomes with a significant number of non-uniquely mappable positions (e.g., human and mouse), a cross-correlation phantom-peak is also observed at a strand-shift equal to the read length. This read-length peak is an effect of the variable and dispersed mappability of positions across the genome. For a significantly enriched dataset, the fragment length cross-correlation peak (representing clustering of fragments around target sites) should be larger than the mappability-based read-length peak.
>
> The RSC is the ratio of the fragment-length cross-correlation value minus the background cross-correlation value, divided by the phantom-peak cross-correlation value minus the background cross-correlation value. The minimum possible value is 0 (no signal), highly enriched experiments have values greater than 1, and values much less than 1 may indicate low quality. [Phantompeakqualtools](https://www.encodeproject.org/software/phantompeakqualtools/) was used to generate the three quality metrics of PBC, NSC and RSC.

## Definitions of ChIP-seq specific quality metrics

> **MACS FDR 0.01:**\
> This is the number of enriched regions identified by MACS using an FDR threshold of 0.01 (1%).
>
> **Under seq:**\
> If set to 1, this means it was manually annotated that this dataset is likely to be undersequenced.
>
> **Diff rep:**\
> If set to 1, it means this row is a replicate that is different from the other replicates (based on self-consistency, NSC, or RSC). Therefore, this sample should not be used for replicate-based comparisons such as IDR.
>
> **Manual low S/N:**\
> If set to 1 this means it was manually annotated that the data has low signal to noise. This could be the result of under-sequencing, poor enrichment during ChIP, poor antibody quality, or the biological nature of the feature being examined.
>
> **Auto low S/N:**\
> If set to 1 this means the data has low signal to noise, scored by NSC \< 1.09 and RSC \< 0.9. This could be the result of under-sequencing, poor enrichment during ChIP, poor antibody quality, or the biological nature of the feature being examined.
>
> **Revoke flag:**\
> These datasets have been revoked by the production lab. R = revoked dataset, D = duplicate good dataset.

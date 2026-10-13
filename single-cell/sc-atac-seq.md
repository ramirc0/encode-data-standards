# scATAC-seq

[Root](../README.md) / [Single cell](README.md) / scATAC-seq

Source: [scATAC-seq Data Standards and Processing Pipeline](https://www.encodeproject.org/data-standards/encode4-single-cell-atac/), no update date ([snapshot](../sources/pages/data-standards__encode4-single-cell-atac.md)). The URL marks it as ENCODE4. The pipeline is from the Kundaje lab.

The page states no numeric thresholds. Its menu links "Pipeline processing restrictions" and "Data quality standards" to the bulk RNA-seq page.

## Supported inputs

| Criterion | Rule |
|---|---|
| Platforms | 10x sc/snATAC-seq; the ATAC-seq part of 10x single-cell multiome (RNA + ATAC); split-pool scATAC-seq from the Bing Ren lab |
| Assembly | The genome references used for bulk RNA-seq: [human](https://www.encodeproject.org/references/ENCSR151GDH) and [mouse](https://www.encodeproject.org/references/ENCSR496QMW) |

## QC

The automated stage corrects barcode errors, maps with Bowtie2, filters reads and writes fragment files. ArchR then reports "multiple QC metrics". The page lists none of them and sets no cutoffs.

Cluster refinement, annotation and integration happen in a manual downstream stage that the page does not specify.

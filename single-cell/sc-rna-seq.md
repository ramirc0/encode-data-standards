# scRNA-seq

[Root](../README.md) / [Single cell](README.md) / scRNA-seq

Source: [scRNA-seq Data Standards and Processing Pipeline](https://www.encodeproject.org/data-standards/encode4-single-cell-rna/), no update date ([snapshot](../sources/pages/data-standards__encode4-single-cell-rna.md)). The URL marks it as ENCODE4. The pipeline is from the Wold lab.

The page states no numeric thresholds. Its menu links "Pipeline processing restrictions" and "Data quality standards" to the bulk RNA-seq page.

## Supported inputs

| Criterion | Rule |
|---|---|
| Assays | Single-cell RNA-seq, single-nucleus RNA-seq and 10x multiome (snATAC + snRNA). 10x and Parse Biosystems Split-Seq libraries. |
| 10x run type | Paired-end with two reads. One read holds at least the cell barcode and UMI. The other holds the sequence. |
| Required metadata | Expected barcodes; UMI and barcode lengths; strandedness and which strand reads come from; cellular or nuclear protocol |
| Nuclear protocols | Include introns when mapping, because nuclei carry unprocessed transcripts |
| Annotation | The full ENCODE annotation set used for bulk RNA-seq. STARsolo indexes: GRCh38 with GENCODE V29, mm10 with GENCODE M21. |

## Count matrices

Each matrix ships as a tar archive with a manifest, barcode labels, feature labels and a sparse Matrix Market file. Spliced counts use `Gene`. Intron-including counts use `GeneFull_Ex50pAS`, which the page describes as "intron including if 50% of the read overlaps an exon".

## QC

The pipeline generates STAR bulk mapping statistics, STARsolo statistics, a UMI versus count plot and gene count QC plots. The page sets no cutoffs on them.

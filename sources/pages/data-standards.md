# Data standards

> Snapshot of <https://www.encodeproject.org/data-standards/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# Data standards

## Assays

The ENCODE Consortium uses several different epigenomic assays, and has also developed protocols and guidelines for the assays shown below. The links provide an overview of the assay, information on experimental guidelines, requirements for processing on the uniform pipelines, and the application of quality metrics for each assay type.

<table>
<tbody>
<tr>
<td><h4>DNA binding</h4>
<ul>
<li><p><strong><a href="https://www.encodeproject.org/chip-seq/histone-encode4/">ChIP-seq for Histones</a></strong></p></li>
<li><p><strong><a href="https://www.encodeproject.org/chip-seq/transcription-factor-encode4/">ChIP-seq for Transcription Factors</a></strong></p></li>
<li>Previous ENCODE3 standards pages can be found at:
<ul>
<li><p><strong><a href="https://www.encodeproject.org/chip-seq/histone/">ChIP-seq for Histones</a></strong></p></li>
<li><p><strong><a href="https://www.encodeproject.org/chip-seq/transcription_factor/">ChIP-seq for Transcription Factors</a></strong></p></li>
</ul></li>
</ul>
<h4>DNA accessibility</h4>
<ul>
<li><strong><a href="https://www.encodeproject.org/data-standards/atac-seq/atac-encode4/">ATAC-seq</a></strong>
<ul>
<li>Previous ENCODE3 pipeline: <strong><a href="https://www.encodeproject.org/atac-seq/">ATAC-seq</a></strong></li>
</ul></li>
<li><strong><a href="https://www.encodeproject.org/data-standards/dnase-seq-encode4/">DNase-seq</a></strong></li>
<li>Previous ENCODE3 standards pages can be found at:
<ul>
<li><strong><a href="https://www.encodeproject.org/data-standards/dnase-seq/">DNase-seq</a></strong> (also used for <strong>genetic modification DNase-seq</strong>)</li>
</ul></li>
</ul>
<h4>DNA methylation</h4>
<ul>
<li><strong><a href="https://www.encodeproject.org/data-standards/wgbs-encode4/">WGBS (ENCODE 4)</a></strong>
<ul>
<li><strong><a href="https://www.encodeproject.org/data-standards/wgbs/">WGBS</a></strong></li>
</ul></li>
</ul>
<h4>3D chromatin structure</h4>
<ul>
<li><strong><a href="https://www.encodeproject.org/chia-pet/">ChIA-PET</a></strong></li>
<li><strong><a href="https://www.encodeproject.org/hic/">HiC</a></strong></li>
</ul></td>
<td><h4>Transcription</h4>
<ul>
<li><strong><a href="https://www.encodeproject.org/data-standards/encode4-bulk-rna/">bulk RNA-seq</a></strong> (used for <strong>total RNA-seq</strong>, <strong>poly(A)+ RNA-seq</strong>, <strong>poly(A)- RNA-seq</strong>, <strong>CRISPR RNA-seq, CRISPRi RNA-seq, shRNA knockdown RNA-seq,</strong> and <strong>siRNA knockdown RNA-seq</strong>)
<ul>
<li>Previous ENCODE3 standards can be found at <a href="https://www.encodeproject.org/data-standards/rna-seq/long-rnas/">bulk RNA-seq</a></li>
</ul></li>
<li><a href="https://www.encodeproject.org/rna-seq/long-read-rna-seq/"><strong>long read RNA-seq</strong></a></li>
<li><strong><a href="https://www.encodeproject.org/microrna/microrna-counts/">microRNA counts</a></strong></li>
<li><a href="https://www.encodeproject.org/microrna/microrna-seq-encode4/"><strong>microRNA-seq (ENCODE 4)</strong></a></li>
<li><strong><a href="https://www.encodeproject.org/data-standards/rampage/">RAMPAGE and CAGE</a></strong></li>
<li><strong><a href="https://www.encodeproject.org/data-standards/rna-seq/small-rnas/">small RNA-seq</a></strong></li>
</ul>
<h4>RNA binding</h4>
<ul>
<li><strong><a href="https://www.encodeproject.org/eclip/">eCLIP</a></strong></li>
<li><strong><a href="https://www.encodeproject.org/rbns/">RNA Bind-N-Seq</a></strong></li>
</ul>
<h4>Single Cell</h4>
<ul>
<li><strong><a href="https://www.encodeproject.org/data-standards/encode4-single-cell-atac/">single-cell ATAC-seq</a></strong></li>
<li><strong><a href="https://www.encodeproject.org/data-standards/encode4-single-cell-rna/">single-cell RNA-seq</a></strong></li>
</ul></td>
</tr>
</tbody>
</table>

## Experimental guidelines

The ENCODE Consortium has adopted shared [experimental guidelines](https://www.encodeproject.org/about/experiment-guidelines/) for the most common ENCODE assays. The guidelines have evolved over time as technologies have changed, and current guidelines are informed by results gathered during the project. The ENCODE Consortium has also developed a set of [antibody characterization standards](https://www.encodeproject.org/about/experiment-guidelines) to address the problems of specificity and reproducibility that are characteristic of antibody-based assays. [Previous versions](https://www.encodeproject.org/about/experiment-guidelines/experiment-guidelines-previous/) of all guidelines are archived and available for reference.

## Quality metrics

The ENCODE Consortium analyzes the quality of the data produced using a variety of metrics. Quality metrics for evaluating epigenomic assays are an active area of research; standards are emerging as more metrics are used with more datasets and types of experiments. The typical values for a quality metric can vary among different assays, or even among different features within the same assay, such as antibodies used in ChIP-seq experiments. Currently, there is no single measurement that identifies all high-quality or low-quality samples. As with quality control for other types of experiments, multiple assessments (including manual inspection of tracks) are useful because differing assessments may capture different concerns. Comparisons within an experimental method (e.g. comparing replicates to each other, comparing values for one antibody in several cell types, or comparing the same antibody and cell type between different labs) can help identify possible stochastic error.

As part of the third phase of ENCODE, [uniform analysis pipelines](https://www.encodeproject.org/pipelines/) were developed for the major assay types, each of which produces a set of data quality metrics. Many of the software tools used for quality metric calculations can be found on the [Software Tools](https://www.encodeproject.org/software/) page with their citations, while the [Terms and Definitions](https://www.encodeproject.org/data-standards/terms/) page contains information on individual metrics. The ENCODE Consortium uses these measures to set standards detailing the criteria for excellent, passable, and poor data. On the ENCODE portal, data that do not meet the minimum cutoff values are flagged according to severity of the error; examples of errors include low read depth, poor replicate concordance, or low correlation.

Older standards for datasets published as part of the [ENCODE integrative analysis publications in 2012](https://www.encodeproject.org/about/2012-integrative-analysis/) can be found on the [quality metrics page associated with the publication](https://www.encodeproject.org/data-standards/2012-quality-metrics).

Click through for information on [reference sequences](https://www.encodeproject.org/data-standards/reference-sequences/) for the Uniform Processing Pipelines.

*Updated April 2019*

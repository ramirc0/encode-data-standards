# MAD Quality Metric

> Snapshot of <https://www.encodeproject.org/data-standards/mad-qc/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# MAD Quality Metric

### Replicate log-ratio standard deviation

The Median Absolute Deviation (MAD) quality metric is more accurately described as the replicate log-ratio standard deviation. This metric evaluates reproducibility between two biological or technical replicates within RNA-seq/RAMPAGE/Entex experiments in terms of similarity of the expression levels across all pairs of genes with the present cut-off. We measure the standard deviation of the log-ratios between replicates using a robust approach, and the values are calculated per pair of replicates. 

The MAD score between replicates **X<sub>1</sub>** and **X<sub>2</sub>** of the sample **X** is calculated as:\
\
**MAD = 1.4826 \* median \| log<sub>2</sub>(X<sub>1_i</sub>/X<sub>2_i</sub>) \| **\
\
where\
**X<sub>1</sub>** : \[X<sub>1_1</sub>,X<sub>1_2</sub>,..,X<sub>1_N</sub>\] expression values in the replicate \#1 \
**X<sub>2</sub>** : \[X<sub>2_1</sub>,X<sub>2_2</sub>,..,X<sub>2_N</sub>\] expression values in the replicate \#2 \
\
The MAD score is calculated on normalized FPKM values for genes G:1..N that have X<sub>1_i</sub>, X<sub>2_i</sub> more than preset cut-off** \>1 FPKM**. 

![](https://www.encodeproject.org/images/cd977949-d394-4e27-9e19-5f8e484376ab/@@download/attachment/MAD_graphs_03-29-2016.png)

**Figure 1.** Distribution of the replicate log-ratio standard deviation by the sample type. The dashed red line shows mean values per each sample type; the number of the samples is indicated in the parenthesis of the legend. 

### References

[A benchmark for RNA-seq quantification pipelines ](https://www.encodeproject.org/publications/dc7a7ac9-1f37-48b1-9ca1-1bb5eaf6214d/)(in press)

# Reference Sequences

> Snapshot of <https://www.encodeproject.org/data-standards/reference-sequences/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# Reference Sequences

## Genome References

The ENCODE project uses Reference Genomes from [NCBI](http://www.ncbi.nlm.nih.gov/genome/browse/reference/) or [UCSC](http://hgdownload.cse.ucsc.edu/downloads.html) to provide a consistent framework for mapping high-throughput sequencing data. In general, ENCODE data are mapped consistently to 2 human (GRCH38, hg19) and 2 mouse (mm9/mm10) genomes for historical comparability. *Drosophia melanogaster* experiments are mapped to either dm3 or dm6 and *Caenorhabdilis elegans* experiments are mapped to ce10 or ce11. The official reference files for each Uniform processing pipeline can be found in the table below, organized by organism and pipeline. In addition to the genome sequences (we generally use the "no alt" version for each genome), a variety of other crucial files can be found there as well (GENCODE transcript references, chromosome size files, the phage lambda genome, etc.).

------------------------------------------------------------------------

### Reference File Sets 

The table below includes files used by each pipeline for uniform processing by the ENCODE DCC, with associated details on genome assembly and annotation, if applicable.  For your convenience, the GRC genome assembly and GENCODE annotation files are directly linked below. For further information, please contact <encode-help@lists.stanford.edu>

#### **ENCODE4 Uniform Processing Pipeline Filesets**

<table>
<tbody>
<tr>
<td style="text-align: center;"><h4>Organism</h4></td>
<td style="text-align: center;"><h4>Pipeline(s)</h4></td>
<td style="text-align: center;"><h4>Reference file set</h4></td>
<td style="text-align: center;"><h4>Genome assembly &amp; annotation</h4></td>
</tr>
<tr>
<td rowspan="9" style="text-align: center;"><img src="https://www.encodeproject.org/images/fb88af95-4489-44e4-b9be-80e2489b2da5/@@download/attachment/human.png" alt="hexagonal human thumbnail" /></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/search/?type=Pipeline&amp;accession=ENCPL787FUN&amp;accession=ENCPL344QWT">ATAC-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR938RZZ/">ENCSR938RZZ</a></strong></td>
<td style="text-align: center;">GRCh38 with GENCODE version V29</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL862USL/">Bulk RNA-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR151GDH/">ENCSR151GDH</a></strong></td>
<td style="text-align: center;">GRCh38 with GENCODE version V29</td>
</tr>
<tr>
<td rowspan="2" style="text-align: center;"><strong><a href="https://www.encodeproject.org/search/?type=Pipeline&amp;accession=ENCPL612HIG&amp;accession=ENCPL809GEM&amp;accession=ENCPL367MAS&amp;accession=ENCPL481MLO">ChIP-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR174MOP/">ENCSR174MOP (TF, Histone)</a></strong></td>
<td style="text-align: center;">GRCh38</td>
</tr>
<tr>
<td style="text-align: center;"><a href="https://www.encodeproject.org/references/ENCSR487FYI/">ENCSR487FYI (MINT-ChIP)</a></td>
<td style="text-align: center;">GRCh38</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL848KLD/">DNase-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR083JOX/">ENCSR083JOX</a></strong></td>
<td style="text-align: center;">GRCh38</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL239OZU/">Long read RNA-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR925QOG/">ENCSR925QOG</a></strong></td>
<td style="text-align: center;">GRCh38 with GENCODE version V29</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL280YDY/">microRNA-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR608ULQ/">ENCSR608ULQ</a></strong></td>
<td style="text-align: center;">GRCh38 with GENCODE version V29</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL182IUX/">WGBS</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR475CAG/">ENCSR475CAG</a></strong></td>
<td style="text-align: center;">GRCh38</td>
</tr>
<tr>
<td rowspan="9" style="text-align: center;"><img src="https://www.encodeproject.org/images/ffa6fcba-7ec2-4f28-bba9-f2f3c87113af/@@download/attachment/mouse.png" alt="hexagonal mouse thumbnail" /></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
<td style="text-align: center;"></td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/search/?type=Pipeline&amp;accession=ENCPL787FUN&amp;accession=ENCPL344QWT">ATAC-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR535HHO/">ENCSR535HHO</a></strong></td>
<td style="text-align: center;">mm10 with GENCODE version M21</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL862USL/">Bulk RNA-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR496QMW/">ENCSR496QMW</a></strong></td>
<td style="text-align: center;">mm10 with GENCODE version M21</td>
</tr>
<tr>
<td rowspan="2" style="text-align: center;"><strong><a href="https://www.encodeproject.org/search/?type=Pipeline&amp;accession=ENCPL612HIG&amp;accession=ENCPL809GEM&amp;accession=ENCPL367MAS&amp;accession=ENCPL481MLO">ChIP-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR928IAF/">ENCSR928IAF (TF, Histone)</a></strong></td>
<td style="text-align: center;">mm10</td>
</tr>
<tr>
<td style="text-align: center;"><a href="https://www.encodeproject.org/references/ENCSR879BNV/">ENCSR879BNV (MINT-ChIP)</a></td>
<td style="text-align: center;">mm10</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL848KLD/">DNase-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR029SEE/">ENCSR029SEE</a></strong></td>
<td style="text-align: center;">mm10</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL239OZU/">Long read RNA-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR069LTV/">ENCSR069LTV</a></strong></td>
<td style="text-align: center;">mm10 with GENCODE version M21</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL280YDY/">microRNA-seq</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR536KRM/">ENCSR536KRM</a></strong></td>
<td style="text-align: center;">mm10 with GENCODEversion M21</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/pipelines/ENCPL182IUX/">WGBS</a></strong></td>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/references/ENCSR923XUC/">ENCSR923XUC</a></strong></td>
<td style="text-align: center;">mm10</td>
</tr>
</tbody>
</table>

####  

#### **Genome assemblies:**

<table>
<tbody>
<tr>
<td style="text-align: center;"><h4>Reference File</h4></td>
<td style="text-align: center;"><h4>Description</h4></td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/GRCh38_no_alt_analysis_set_GCA_000001405.15/">GRCh38_no_alt_analysis_set_GCA_000001405.15</a> [<a href="https://www.encodeproject.org/files/GRCh38_no_alt_analysis_set_GCA_000001405.15/@@download/GRCh38_no_alt_analysis_set_GCA_000001405.15.fasta.gz">download</a>]</strong></td>
<td style="text-align: center;">GRCh38 XY reference genome (ENCODE3 used only one reference genome for analysis)</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/female.hg19/">female.hg19</a> [<a href="https://www.encodeproject.org/files/female.hg19/@@download/female.hg19.fasta.gz">download</a>]</strong></td>
<td style="text-align: center;">hg19 XX reference genome (ENCODE2 used sex-specific genomes for analysis)</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/male.hg19/">male.hg19</a> [<a href="https://www.encodeproject.org/files/male.hg19/@@download/male.hg19.fasta.gz">download</a>]</strong></td>
<td style="text-align: center;">hg19 XY reference genome (ENCODE2 used sex-specific genomes for analysis)</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/mm10_no_alt_analysis_set_ENCODE/">mm10_no_alt_analysis_set_ENCODE</a> [<a href="https://www.encodeproject.org/files/mm10_no_alt_analysis_set_ENCODE/@@download/mm10_no_alt_analysis_set_ENCODE.fasta.gz">download</a>]</strong></td>
<td style="text-align: center;">mm10 XY reference genome (ENCODE3 used only one reference genome for analysis)</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/female.mm10/">female.mm10</a> [<a href="https://www.encodeproject.org/files/female.mm10/@@download/female.mm10.fasta.gz">download</a>]</strong></td>
<td style="text-align: center;">XX mm10 "minimal", which has been replaced by mm10_no_alt_analysis_set_ENCODE.fasta</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/male.mm10/">male.mm10</a> [<a href="https://www.encodeproject.org/files/male.mm10/@@download/male.mm10.fasta.gz">download</a>]</strong></td>
<td style="text-align: center;">XY mm10 "minimal", which has been replaced by mm10_no_alt_analysis_set_ENCODE.fasta</td>
</tr>
</tbody>
</table>

#### **Genome annotations:**

<table>
<tbody>
<tr>
<td style="text-align: center;"><h4>Reference File</h4></td>
<td style="text-align: center;"><h4>Description</h4></td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/ENCFF159KBI/">ENCFF159KBI</a> [<a href="https://www.encodeproject.org/files/ENCFF159KBI/@@download/ENCFF159KBI.gtf.gz">download</a>]</strong></td>
<td style="text-align: center;">GRCh38 GENCODE V29 merged annotations gtf file</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/ENCFF824ZKD/">ENCFF824ZKD</a> [<a href="https://www.encodeproject.org/files/ENCFF824ZKD/@@download/ENCFF824ZKD.gtf.gz">download</a>] &amp; <a href="https://www.encodeproject.org/files/ENCFF316JQJ/">ENCFF316JQJ</a> [<a href="https://www.encodeproject.org/files/ENCFF316JQJ/@@download/ENCFF316JQJ.tar.gz">download</a>]</strong></td>
<td style="text-align: center;">GRCh38 GENCODE V24 gtf and tar files</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/gencode.v19.annotation/">gencode.v19.annotation</a> [<a href="https://www.encodeproject.org/files/gencode.v19.annotation/@@download/gencode.v19.annotation.gtf.gz">download</a>]</strong></td>
<td style="text-align: center;">hg19 GENCODE V19 gtf file</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/ENCFF871VGR/">ENCFF871VGR</a> [<a href="https://www.encodeproject.org/files/ENCFF871VGR/@@download/ENCFF871VGR.gtf.gz">download</a>]</strong></td>
<td style="text-align: center;">mm10 GENCODE VM21 merged annotations gtf file </td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/gencode.vM7.annotation/">gencode.vM7.annotation</a> [<a href="https://www.encodeproject.org/files/gencode.vM7.annotation/@@download/gencode.vM7.annotation.gtf.gz">download</a>]</strong></td>
<td style="text-align: center;">mm10 GENCODE M7 gtf file</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/gencode.vM4.annotation/">gencode.vM4.annotation</a> [<a href="https://www.encodeproject.org/files/gencode.vM4.annotation/@@download/gencode.vM4.annotation.gtf.gz">download</a>]</strong></td>
<td style="text-align: center;">mm10 GENCODE M4 gtf file</td>
</tr>
</tbody>
</table>

#### **Additional useful files for uniform processing pipelines:**

<table>
<tbody>
<tr>
<td style="text-align: center;"><h4>Reference File</h4></td>
<td style="text-align: center;"><h4>Description</h4></td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/ENCFF908UQN/">ENCFF908UQN</a> [<a href="https://www.encodeproject.org/files/ENCFF908UQN/@@download/ENCFF908UQN.fasta.gz">download</a>]</strong></td>
<td style="text-align: center;">spike-in sequence used for RNA-seq analysis</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/lambda.fa/">lambda.fa</a> [<a href="https://www.encodeproject.org/files/lambda.fa/@@downloadlambda.fa.fasta.gz">download</a>]</strong></td>
<td style="text-align: center;">phage λ wild type assembly J02459.1 (used as a methylation negative control)</td>
</tr>
<tr>
<td style="text-align: center;"><a href="https://www.encodeproject.org/files/%20ENCFF356LFX/">ENCFF356LFX</a> [<a href="https://www.encodeproject.org/files/%20ENCFF356LFX/@@download/%20ENCFF356LFX.bed.gz">download</a>]</td>
<td style="text-align: center;">ChIP GRCh38 blacklist</td>
</tr>
<tr>
<td style="text-align: center;"><a href="https://www.encodeproject.org/files/ENCFF200UUD/">ENCFF200UUD</a> [<a href="https://www.encodeproject.org/files/ENCFF200UUD/@@download/ENCFF200UUD.bed.gz">download</a>]</td>
<td style="text-align: center;">MINT-ChIP hg19 blacklist</td>
</tr>
<tr>
<td style="text-align: center;"><strong><a href="https://www.encodeproject.org/files/ENCFF023CZC/">ENCFF023CZC</a> [<a href="https://www.encodeproject.org/files/ENCFF023CZC/@@download/ENCFF023CZC.bed.gz">download</a>]</strong></td>
<td style="text-align: center;">MINT-ChIP GRCh38 blacklist</td>
</tr>
</tbody>
</table>

------------------------------------------------------------------------

### Collection of References

Some of the experiments at the ENCODE portal have not been processed by the DCC uniform processing pipelines and may have used different reference files. The [References search page](https://www.encodeproject.org/references/) includes all the reference datasets used by the different projects whose data could be found on the portal.

*Updated January 05, 2021*

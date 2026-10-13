# Audits

[Root](../README.md) / Audits

The ENCODE portal flags data that miss a standard. Each flag is an audit with a category, such as `low read depth`, and a level. The level sets the flag color. Release requires passing the "routine metadata audits" that every standards page names.

Two sources describe them:

- The [Audits page](https://www.encodeproject.org/data-standards/audits/) ([snapshot](../sources/pages/data-standards__audits.md)) lists the categories in prose.
- The audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06) sets the exact cutoffs. This branch follows the code. Each assay's `portal-audits.md` leaf compares it with the published standards.

## Levels

| Level | Flag color | Meaning in the repository docs | Visible to |
|---|---|---|---|
| ERROR | red | "This is wrong no matter what." | everyone |
| NOT_COMPLIANT | orange | "This should not be released this way." | everyone |
| WARNING | yellow | "Informational warning." | everyone |
| INTERNAL_ACTION | gray | DCC needs to update metadata or code | logged-in users only |
| no audit | green, shown as OK | | everyone |

Colors come from `static/scss/encoded/modules/_audits.scss` and meanings from `docs/making_audits.md`. Pages show the highest level present. The terms page tables use Yellow and Orange, which match WARNING and NOT_COMPLIANT. The audit class and its numeric levels come from snovault, a dependency outside this repository.

## How to read the conditions

- Conditions copy the code's operators and literals. Named constants are resolved to their values.
- A tier fires only when its condition holds. A value outside every tier raises nothing. Watch strict bounds: in situ Hi-C, for example, raises nothing at exactly 20%.
- "Halved for paired-end data" means the code divides the count by 2 and truncates it when `mapped_run_type` is `paired-ended`. When `mapped_run_type` is absent, it halves when the metric has both `read1` and `read2` keys.
- Locations are `file:function:lines` under `src/encoded/audit/` at the pinned commit.

## Layers and gates

- `experiment.py` audits Experiment objects: raw data, read length, controls, replication and metadata.
- `analysis.py` audits Analysis objects: the pipeline QC metrics. These run for pipelines with award RFA ENCODE4, ENCODE3, ENCODE2-Mouse, ENCODE2, ENCODE, Roadmap or modERN. They need exactly one dataset and one pipeline lab (`encode-processing-pipeline`, `kevin-white` or `yijun-ruan`). They skip deleted and revoked analyses, community, GGR and modENCODE datasets, and file sets and series.
- `experiment.py` standards checks need award RFA ENCODE4, ENCODE3, ENCODE2-Mouse, ENCODE2, ENCODE or Roadmap, and a human or mouse biosample.

## Per-assay audits

- [ChIP-seq](../dna-binding/chip-seq/portal-audits.md)
- [ATAC-seq](../dna-accessibility/atac-seq/portal-audits.md)
- [DNase-seq](../dna-accessibility/dnase-seq/portal-audits.md)
- [WGBS](../dna-methylation/wgbs/portal-audits.md)
- [ChIA-PET](../3d-chromatin/chia-pet/portal-audits.md)
- [Hi-C](../3d-chromatin/hi-c/portal-audits.md)
- [Bulk RNA-seq](../transcription/bulk-rna-seq/portal-audits.md)
- [Long-read RNA-seq](../transcription/long-read-rna-seq/portal-audits.md)
- [microRNA-seq](../transcription/microrna-seq/portal-audits.md)
- [microRNA counts](../transcription/microrna-counts/portal-audits.md)
- [RAMPAGE and CAGE](../transcription/rampage-cage/portal-audits.md)
- [Small RNA-seq](../transcription/small-rna-seq/portal-audits.md)
- [eCLIP](../rna-binding/eclip/portal-audits.md)
- [RNA Bind-n-Seq](../rna-binding/rna-bind-n-seq/portal-audits.md)
- [Single cell](../single-cell/portal-audits.md)

## Assay-agnostic audits

### Replication

| Flag | Level | Condition | Applies to |
|---|---|---|---|
| unreplicated experiment | NOT_COMPLIANT | no biological replicate | ENCODE4, ENCODE3 and GGR awards; released or submitted |
| unreplicated experiment | NOT_COMPLIANT; INTERNAL_ACTION for tissue and primary cell | exactly one biological replicate | same |
| undetermined replication_type | INTERNAL_ACTION | `replication_type` missing | all experiments |
| inconsistent donor | ERROR | more than one donor across replicates | non-human biosamples |
| inconsistent age, inconsistent sex | NOT_COMPLIANT | more than one value across replicates | non-human biosamples |
| biological replicates with identical biosample | INTERNAL_ACTION | two biological replicates share a biosample | all experiments |
| technical replicates with not identical biosample | ERROR | technical replicates of one biological replicate use different biosamples | single-cell RNA sequencing exempt |
| sequencing runs labeled as technical replicates | INTERNAL_ACTION | one library appears in two technical replicates | all experiments |
| replicate with no library | ERROR | a replicate has no library | all experiments |

Exempt from `unreplicated experiment`: single-cell RNA sequencing, RNA Bind-n-Seq, genetic modification followed by DNase-seq, long read single-cell RNA-seq, single-nucleus ATAC-seq with exactly one replicate, control experiments, and the four GTEx donors ENCDO845WKR, ENCDO451RUA, ENCDO793LXB and ENCDO271OUW. The code has no EN-TEx exemption. EN-TEx tissues get INTERNAL_ACTION through the tissue rule.

### Controls

| Flag | Level | Condition | Applies to |
|---|---|---|---|
| missing possible_controls | ERROR; NOT_COMPLIANT for CAGE, RAMPAGE and the ENCODE2, Roadmap, modENCODE and ENCODE2-Mouse awards | no possible controls | Mint-ChIP-seq, ChIP-seq, RNA Bind-n-Seq, RIP-seq, RAMPAGE, CAGE, eCLIP, single-cell RNA sequencing (ENCODE3 and ENCODE4 exempt), shRNA, siRNA, CRISPR genome editing and CRISPRi followed by RNA-seq |
| inconsistent control | ERROR | the control's biosample term differs from the experiment's | same |
| missing controlled_by | WARNING | a fastq does not name its control | ChIP-seq, RAMPAGE, CAGE, shRNA, siRNA and CRISPR genome editing followed by RNA-seq |
| inconsistent control | ERROR | the control fastq has another biosample, another file format, or comes from a dataset outside `possible_controls` | same |
| inconsistent control run_type | WARNING | run types differ | same; RAMPAGE and CAGE exempt |
| inconsistent control read length | WARNING | read lengths differ by more than 2 bp | same; shRNA, siRNA and CRISPR editing exempt |

ChIP-seq adds `missing input control` and control depth audits. See the [ChIP-seq audits](../dna-binding/chip-seq/portal-audits.md#controls).

### Sequencing runs and platforms

| Flag | Level | Condition |
|---|---|---|
| mixed read lengths | WARNING | read lengths within or between biological replicates differ by more than 2 bp (9 bp for DNase-seq) |
| inconsistent platforms | WARNING | more than one platform among raw files, or a control on another platform. HiSeq 2000 and 2500 count as one platform, as do Genome Analyzer II, IIe and IIx. DNase-seq is exempt. |
| low read count | WARNING | raw reads summed per replicate fall below 20000000 (ChIP-seq, Mint-ChIP-seq, DNase-seq) or 10000000 (RAMPAGE, shRNA, siRNA, CRISPR editing), or 500000 for modENCODE ChIP-seq. `in progress` experiments only. Both mates of paired-end runs are counted. |
| missing raw data in replicate | ERROR; INTERNAL_ACTION for ENCODE2, Roadmap, modENCODE and ENCODE2-Mouse | a replicate has no files, or no raw-data file |
| lacking processed data | WARNING | the dataset has no processed files |

Assay read-length minimums sit in the assay leaves: ChIP-seq 50, 36 and 26 bp tiers; DNase-seq 36 bp; RNA family 50 bp; WGBS 100 bp.

### RNA library metadata

| Flag | Level | Condition |
|---|---|---|
| missing RNA fragment size | NOT_COMPLIANT; WARNING for Bru-seq, BruChase-seq and BruUV-seq | an RNA, polyadenylated mRNA or miRNA library has neither `size_range` nor `average_fragment_size`. Long-read and array assays are exempt. |
| missing RIN | INTERNAL_ACTION | an RNA library lacks `rna_integrity_number` (15 RNA assays, long-read RNA-seq included) |
| mixed libraries | INTERNAL_ACTION | libraries of one experiment use more than one nucleic acid |
| mixed strand specificities | ERROR | libraries of one experiment differ in strand specificity |

### Antibody characterization

Antibody eligibility comes from precomputed lot reviews. Histone antibodies are reviewed for any cell type or tissue. Other antibodies are matched on biosample term and organism. These audits run for ENCODE4, ENCODE3 and modERN experiments of target-based assays. RBNS, shRNA, siRNA and CRISPRi are exempt. See the [antibody standards](../antibodies/README.md).

| Flag | Level | Condition |
|---|---|---|
| missing antibody | ERROR | a replicate of a target-based assay has no antibody |
| missing target | ERROR | a target-based assay has no target |
| inconsistent target | ERROR | the antibody's targets do not include the experiment target (tag antibodies excepted) |
| uncharacterized antibody | NOT_COMPLIANT | no characterizations, or the lot review says `awaiting characterization`. ENCODE4 tag antibodies need biosample characterizations. |
| antibody not characterized to standard | NOT_COMPLIANT | the lot review status is `not characterized to standards` or `not pursued` |
| partially characterized antibody | NOT_COMPLIANT | the status is `pending dcc review` or `partially characterized`, or no lot review matches the biosample (non-histone antibodies) |
| antibody characterized with exemption | WARNING | the status is `characterized to standards with exemption` |
| inconsistent genetic modification tags | ERROR | the antibody's tag targets share no label with the biosample's introduced tags |

Lot-level audits (antibody lots of ENCODE3, ENCODE4 and modERN awards):

| Flag | Level | Condition |
|---|---|---|
| no characterizations submitted | NOT_COMPLIANT | the lot has no characterizations |
| need compliant primaries | NOT_COMPLIANT | a lot review is awaiting or pending primary characterization |
| no primary characterizations, no secondary characterizations | NOT_COMPLIANT | the lot is not fully characterized and lacks that kind of characterization |
| need compliant secondary | NOT_COMPLIANT | no secondary characterization is `compliant` or `exempt from standards` |
| missing antibody registry reference | INTERNAL_ACTION | no `AR:` cross-reference |

### Genetic modifications and biosample characterization

| Flag | Level | Condition |
|---|---|---|
| missing genetic modification characterization | ERROR for ENCODE4 ChIP-seq; WARNING otherwise | a tagging modification has no characterization |
| missing biosample characterization | ERROR for ENCODE4 ChIP-seq with tagging; WARNING otherwise | a modified biosample has no characterization of its own or of a parent |
| not compliant biosample characterization, missing compliant biosample characterization | same rule | the characterization review is not compliant, or none is compliant or exempt |
| mixed biosample perturbations | ERROR | perturbed and unperturbed biosamples mixed |
| missing genetic modification reagents | WARNING | no reagents and no method-specific sequences or documents |

### Metadata

The code also enforces metadata rules without numeric cutoffs. Examples: missing biosample or donor (ERROR), inconsistent ontology term (ERROR), missing documents (NOT_COMPLIANT), unequal read counts between paired fastqs (ERROR), and harvest dates before culture start dates (ERROR). The [audits page](../sources/pages/data-standards__audits.md) lists them in prose.

## Assays without a standards page

Functional characterization experiments (MPRA, STARR-seq, CRISPR screens and others) get no quality-metric audits. They get `unreplicated experiment` (no assay is exempt), `missing genetic modification` (ERROR, except pooled clone sequencing), `missing raw data in replicate` (ERROR) and readout checks for FACS and Flow-FISH CRISPR screens (ERROR). CUT&RUN, CUT&Tag, PLAC-seq, RIP-seq, MeDIP-seq, iCLIP and Mint-ChIP-seq need a target and an antibody (ERROR).

## Audits page versus code

- The page names categories the code never emits. Examples: `Insufficient SPOT score`, `Extremely low TSS enrichment`, `Insufficient library complexity`, `Missing run_type`, `Not eligible antibody`, `Missing IHEC required assay`.
- `Non-standard run_type` and `Not compliant platform` cannot fire. The first sits in functions with no caller. The second compares an object with strings.
- The page says unreplicated experiments are allowed for "ENTEx/GTEx". The code exempts only four GTEx donors.
- The page describes WGBS coverage tiers for the paired-end pipeline only. The code applies them to the single-end and gemBS pipelines too.
- The page gives ATAC-seq TSS tiers for GRCh38 only. The code uses 10 and 15 for mm10.

## Code defects that change what fires

- ATAC-seq `moderate FRiP score` tests PBC1 instead of FRiP.
- `low read count` meant to halve paired-end counts, but the line is a comparison, so both mates count.
- Small RNA-seq and RAMPAGE `missing read depth` calls pass too few arguments and raise an error when reached.
- microRNA-seq and long-read audits skip a metric value of 0.
- `inconsistent control` stops after the first control that is not a series.
- H3K9me3 `extremely low read depth` fires below 100 reads. The intended cutoff is unknown.

## Open questions

- The numeric levels and the roll-up of Analysis and File audits onto Experiment pages live in snovault.
- Which RAMPAGE pipeline titles production files carry. The read-length and analysis audits expect different titles.
- Whether single-end metrics carry zero-valued `read1` and `read2` keys, which would wrongly halve them.

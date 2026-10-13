# ENCODE data standards

A tree of the thresholds that define ENCODE data standards. The branches follow the assay categories of the [ENCODE data standards index](https://www.encodeproject.org/data-standards/). Each leaf holds the numeric cutoffs, tiers and qualitative rules from one ENCODE source: a standards page, a guidelines PDF, or the portal audit code.

## Reading a leaf

- `encode4.md`, `encode3.md` and `encode2.md` follow ENCODE's phase labels. `standards.md` holds a page that names no phase.
- `experimental-guidelines.md` and `computational-guidelines.md` hold the PDFs that the standards pages link.
- `portal-audits.md` holds the cutoffs the portal enforces in code and lists where they differ from the published standards.
- Numbers and operators are copied exactly. Depth units differ by assay. See [read-depth units](GLOSSARY.md#read-depth-units).
- The "ENCODE wording" column copies ENCODE's own word (must, should, recommended, acceptable). It is not normalized.
- Each leaf ends with "Conflicts and gaps": contradictions, tier gaps and unit mismatches in its sources.
- An assay with several leaves is a folder with a README. An assay with one leaf is a single file.

## Tree

- [DNA binding](dna-binding/README.md)
  - [ChIP-seq](dna-binding/chip-seq/README.md)
    - [Transcription factor](dna-binding/chip-seq/transcription-factor/README.md): [ENCODE4](dna-binding/chip-seq/transcription-factor/encode4.md), [ENCODE3](dna-binding/chip-seq/transcription-factor/encode3.md)
    - [Histone](dna-binding/chip-seq/histone/README.md): [ENCODE4](dna-binding/chip-seq/histone/encode4.md), [ENCODE3](dna-binding/chip-seq/histone/encode3.md)
    - [ENCODE2](dna-binding/chip-seq/encode2.md), [experimental guidelines](dna-binding/chip-seq/experimental-guidelines.md), [portal audits](dna-binding/chip-seq/portal-audits.md)
  - [ChIP-chip](dna-binding/chip-chip.md) (ENCODE2)
- [DNA accessibility](dna-accessibility/README.md)
  - [ATAC-seq](dna-accessibility/atac-seq/README.md): [ENCODE4](dna-accessibility/atac-seq/encode4.md), [ENCODE3](dna-accessibility/atac-seq/encode3.md), [portal audits](dna-accessibility/atac-seq/portal-audits.md)
  - [DNase-seq](dna-accessibility/dnase-seq/README.md): [ENCODE4](dna-accessibility/dnase-seq/encode4.md), [ENCODE3](dna-accessibility/dnase-seq/encode3.md), [ENCODE2](dna-accessibility/dnase-seq/encode2.md), [experimental guidelines](dna-accessibility/dnase-seq/experimental-guidelines.md), [portal audits](dna-accessibility/dnase-seq/portal-audits.md)
  - [FAIRE-seq](dna-accessibility/faire-seq.md) (ENCODE2)
- [DNA methylation](dna-methylation/README.md)
  - [WGBS](dna-methylation/wgbs/README.md): [ENCODE4](dna-methylation/wgbs/encode4.md), [ENCODE3](dna-methylation/wgbs/encode3.md), [experimental guidelines](dna-methylation/wgbs/experimental-guidelines.md), [portal audits](dna-methylation/wgbs/portal-audits.md)
  - [RRBS](dna-methylation/rrbs.md), [Methyl27](dna-methylation/methyl27.md), [Methyl-seq](dna-methylation/methyl-seq.md) (ENCODE2)
- [3D chromatin](3d-chromatin/README.md)
  - [ChIA-PET](3d-chromatin/chia-pet/README.md): [standards](3d-chromatin/chia-pet/standards.md), [experimental guidelines](3d-chromatin/chia-pet/experimental-guidelines.md), [ENCODE3 guidelines](3d-chromatin/chia-pet/experimental-guidelines-encode3.md), [portal audits](3d-chromatin/chia-pet/portal-audits.md)
  - [Hi-C](3d-chromatin/hi-c/README.md): [standards](3d-chromatin/hi-c/standards.md), [experimental guidelines](3d-chromatin/hi-c/experimental-guidelines.md), [computational guidelines](3d-chromatin/hi-c/computational-guidelines.md), [portal audits](3d-chromatin/hi-c/portal-audits.md)
- [Transcription](transcription/README.md): [experimental guidelines](transcription/experimental-guidelines.md), [ENCODE2](transcription/encode2.md)
  - [Bulk RNA-seq](transcription/bulk-rna-seq/README.md): [ENCODE4](transcription/bulk-rna-seq/encode4.md), [ENCODE3](transcription/bulk-rna-seq/encode3.md), [portal audits](transcription/bulk-rna-seq/portal-audits.md)
  - [Long-read RNA-seq](transcription/long-read-rna-seq/README.md): [standards](transcription/long-read-rna-seq/standards.md), [portal audits](transcription/long-read-rna-seq/portal-audits.md)
  - [microRNA-seq](transcription/microrna-seq/README.md): [ENCODE4](transcription/microrna-seq/encode4.md), [ENCODE3](transcription/microrna-seq/encode3.md), [portal audits](transcription/microrna-seq/portal-audits.md)
  - [microRNA counts](transcription/microrna-counts/README.md): [standards](transcription/microrna-counts/standards.md), [portal audits](transcription/microrna-counts/portal-audits.md)
  - [RAMPAGE and CAGE](transcription/rampage-cage/README.md): [standards](transcription/rampage-cage/standards.md), [portal audits](transcription/rampage-cage/portal-audits.md)
  - [Small RNA-seq](transcription/small-rna-seq/README.md): [standards](transcription/small-rna-seq/standards.md), [portal audits](transcription/small-rna-seq/portal-audits.md)
- [RNA binding](rna-binding/README.md)
  - [eCLIP](rna-binding/eclip/README.md): [standards](rna-binding/eclip/standards.md), [experimental guidelines](rna-binding/eclip/experimental-guidelines.md), [portal audits](rna-binding/eclip/portal-audits.md)
  - [RNA Bind-n-Seq](rna-binding/rna-bind-n-seq/README.md): [standards](rna-binding/rna-bind-n-seq/standards.md), [portal audits](rna-binding/rna-bind-n-seq/portal-audits.md)
  - [RIP](rna-binding/rip.md) (ENCODE2)
- [Single cell](single-cell/README.md): [scATAC-seq](single-cell/sc-atac-seq.md), [scRNA-seq](single-cell/sc-rna-seq.md), [portal audits](single-cell/portal-audits.md)
- [Antibodies](antibodies/README.md): characterization standards, 2008 to 2019
- [General](general/README.md): [cell culture](general/cell-culture.md), [data reporting](general/data-reporting.md)
- [Audits](audits/README.md): audit levels, colors and assay-agnostic rules
- [Glossary](GLOSSARY.md): shared definitions and tier tables
- [Sources](sources/README.md): pages, documents and code consulted

## Notable conflicts

The sources disagree in places that change whether data pass.

- ATAC-seq depth: the [ENCODE4 page](dna-accessibility/atac-seq/encode4.md) asks for 15 million fragments, yet equates 50 million paired-end reads with 15 million fragments. The [ENCODE3 page](dna-accessibility/atac-seq/encode3.md) says 25 million. The [portal](dna-accessibility/atac-seq/portal-audits.md) flags NOT_COMPLIANT below 20 million.
- Broad histone marks: the [ENCODE4 page](dna-binding/chip-seq/histone/encode4.md) states a 20 million usable-fragment minimum and calls > 35 million acceptable. The [portal](dna-binding/chip-seq/portal-audits.md) flags NOT_COMPLIANT below 35 million.
- Hi-C ligation motif: the [standards page](3d-chromatin/hi-c/standards.md) sets a 15% minimum. The [computational guidelines](3d-chromatin/hi-c/computational-guidelines.md) and the [portal](3d-chromatin/hi-c/portal-audits.md) use 5% and 25%.
- ChIA-PET: the [ENCODE4 guidelines](3d-chromatin/chia-pet/experimental-guidelines.md) expect 200 million total PETs, 40 million non-redundant PETs and 50,000 peaks (±20%). The [standards page](3d-chromatin/chia-pet/standards.md) recommends ≥ 150 million read pairs, ≥ 10 million non-redundant PETs and ≥ 10,000 peaks.
- DNase-seq: the [2017 guidelines](dna-accessibility/dnase-seq/experimental-guidelines.md) allow at most 10% mitochondrial reads and want more than 80% uniquely mapping reads. The [standards page](dna-accessibility/dnase-seq/encode4.md) calls 10 to 15% mitochondrial reads and 65 to 75% mappability Acceptable. The portal audits neither.
- EN-TEx: most pages exempt EN-TEx samples from the replicate rule. The portal exempts only four GTEx donors ([audits](audits/README.md#replication)).
- Small RNA-seq: the [page](transcription/small-rna-seq/standards.md) notes that older projects aimed for 10 million aligned reads. The [portal](transcription/small-rna-seq/portal-audits.md) flags 10 to 20 million as NOT_COMPLIANT.

## Freshness

- Portal pages were snapshotted on 2026-10-12. `scripts/snapshot-pages.sh` rebuilds [sources/pages](sources/pages/). Run it, then `git diff sources/` to see what ENCODE changed.
- PDFs are cited by portal URL and page.
- Audit cutoffs come from [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded) at commit `9bd8ff1` (2026-10-06).

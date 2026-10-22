# Sources

[Root](../README.md) / Sources

Everything consulted to build this reference.

## Portal pages

[pages/](pages/) holds Markdown snapshots of the 39 pages in [pages.txt](pages.txt), fetched 2026-10-12. [`scripts/snapshot-pages.sh`](../scripts/snapshot-pages.sh) rebuilds them from each page's portal JSON (`?format=json`, layout blocks) with pandoc and the [`portal-page.lua`](../scripts/portal-page.lua) filter. Rerun it, then `git diff sources/` to see what ENCODE changed.

The [Glossary](https://www.encodeproject.org/glossary/) page has no layout blocks. The portal renders it from [`glossary.json`](https://www.encodeproject.org/static/components/glossary/glossary.json), which the script turns into [pages/glossary.md](pages/glossary.md), fetched 2026-10-22. The file is identical at encoded commit `9bd8ff1` and was last changed there on 2021-05-19.

The snapshots skip readability extractors on purpose. Defuddle dropped each page's first block (the assay overview and "Updated" date) and some link lists, such as eight documents on the experiment guidelines page.

Pages checked but not snapshotted:

- Redirect stubs, which hold only a "moved to" link: `/chip-seq/`, `/data-standards/chip-seq/`, `/data-standards/atac-seq/`, `/data-standards/eclip/`, `/data-standards/rbns/`, `/data-standards/microrna/` and its two children, `/data-standards/rna-seq/`, `/rna-seq/`, `/rna-seq/long-rnas/`, `/rna-seq/small-rnas/`, `/wgbs/`, `/rampage/`, `/microrna/`.
- Unreleased drafts ("in progress"): `/dnase-seq/` (a DNase-seq page with editor notes and a duplication-rate table image) and `/help/glossary/`. Their content is not used.

## Documents

PDFs are linked by portal URL and cited by page. They are not stored here.

| Document | Date | Leaves |
|---|---|---|
| [TF antibody characterization](https://www.encodeproject.org/documents/c7cb0632-7e5f-455e-9119-46a54f160711/@@download/attachment/ENCODE_Approved_May_2016_TF_Antibody%20Characterization_Guidelines.pdf) | May 2016 | [antibodies](../antibodies/transcription-factor.md) |
| [Histone and chromatin-associated protein antibody characterization](https://www.encodeproject.org/documents/4bb40778-387a-47c4-ab24-cebe64ead5ae/@@download/attachment/ENCODE_Approved_Oct_2016_Histone_and_Chromatin_associated_Proteins_Antibody_Characterization_Guidelines.pdf) | October 2016 | [antibodies](../antibodies/histone-chromatin.md) |
| [RBP antibody characterization](https://www.encodeproject.org/documents/fb70e2e7-8a2d-425b-b2a0-9c39fa296816/@@download/attachment/ENCODE_Approved_Nov_2016_RBP_Antibody_Characterization_Guidelines.pdf) | November 2016 | [antibodies](../antibodies/rna-binding-protein.md) |
| [fRIP antibody characterization](https://www.encodeproject.org/documents/2c01f6b3-f04d-453d-9a32-4b1ecf1f26aa/@@download/attachment/ENCODE_Approved_Nov_2016_fRIP_Antibody_Characterization_Guidelines.pdf) | November 2016 | [antibodies](../antibodies/frip.md) |
| [Epitope-tagged TF ChIP-seq antibody and genomic characterization](https://www.encodeproject.org/documents/04fe5259-b1a7-4649-9b59-0becba9ff659/@@download/attachment/20190213%20Epitope-tagged%20TF%20ChIP-seq-2.pdf) | August 2019 | [antibodies](../antibodies/epitope-tagged-tf.md) |
| [Epitope tags in ChIP-seq](https://www.encodeproject.org/documents/35a9f776-dd6a-44e3-8795-50ead83f34f7/@@download/attachment/Guidelines_for_Use_of_Epitope_Tags_in_ChIP-seq_Jan_2017.pdf) | January 2017 | [antibodies](../antibodies/epitope-tagged-tf-2017.md) |
| [ENCODE3 ChIP-seq guidelines (v3.0)](https://www.encodeproject.org/documents/ceb172ef-7474-4cd6-bfd2-5e8e6e38592e/@@download/attachment/ChIP-seq_ENCODE3_v3.0.pdf) | January 2017 | [ChIP-seq](../dna-binding/chip-seq/experimental-guidelines.md) |
| [ENCODE3 DNase-seq guidelines](https://www.encodeproject.org/documents/a549ac0a-c991-4f78-a0ba-36c81f232aed/@@download/attachment/DNase_experimental_guidelines_Jan2017.pdf) | January 2017 | [DNase-seq](../dna-accessibility/dnase-seq/experimental-guidelines.md) |
| [WGBS standards and guidelines](https://www.encodeproject.org/documents/108d2515-c053-4b18-bc65-27e8f26d62c5/@@download/attachment/MethylC-SeqStandards_ENCODE3_EM.pdf) | July 2015 | [WGBS](../dna-methylation/wgbs/experimental-guidelines.md) |
| [ENCODE4 ChIA-PET v2.0](https://www.encodeproject.org/documents/480f9184-07a5-4e57-bc33-ca6f675a1f97/@@download/attachment/ChIA-PET%20protocol%20for%20ENCODE4_Final.pdf) | July 2017 | [ChIA-PET](../3d-chromatin/chia-pet/experimental-guidelines.md) |
| [ENCODE3 ChIA-PET v1.0](https://www.encodeproject.org/documents/4d5c9dd2-ec30-478d-bd85-360fc3cba033/@@download/attachment/chia_pet_guidelines.pdf) | January 2017 | [ChIA-PET](../3d-chromatin/chia-pet/experimental-guidelines-encode3.md) |
| [ENCODE4 in situ Hi-C v1.0](https://www.encodeproject.org/documents/f3ec6a89-4cde-4b0d-9da4-50d35b7f023b/@@download/attachment/final_in_situ_hi_c_experimental_standards_of_the_encode_consortium.pdf) | January 2018 | [Hi-C](../3d-chromatin/hi-c/experimental-guidelines.md) |
| [ENCODE4 in situ Hi-C computational guidelines](https://www.encodeproject.org/documents/75926e4b-77aa-4959-8ca7-87efcba39d79/@@download/attachment/comp_doc_7july2018_final.pdf) | July 2018 | [Hi-C](../3d-chromatin/hi-c/computational-guidelines.md) |
| [ENCODE3 RNA-seq guidelines](https://www.encodeproject.org/documents/cede0cbe-d324-4ce7-ace4-f0c3eddf5972/@@download/attachment/ENCODE%20Best%20Practices%20for%20RNA_v2.pdf) | January 2017 | [transcription](../transcription/experimental-guidelines.md) |
| [ENCODE3 eCLIP guidelines](https://www.encodeproject.org/documents/9422b49f-7105-4d90-86f8-1201e008eb58/@@download/attachment/eCLIP_experimental_guidelines_doc_v1.0.pdf) | January 2017 | [eCLIP](../rna-binding/eclip/experimental-guidelines.md) |
| [Antibody characterization standards](https://www.encodeproject.org/documents/e7c46221-861b-4687-ab2c-6c5269223c5c/@@download/attachment/Antibody_Characterization_ENCODE3_August2015.pdf) | August 2015 | [antibodies](../antibodies/encode3-2015.md) |
| [Antibody characterization standards](https://www.encodeproject.org/documents/88dc12f7-c72d-4b43-a6cd-c6f3a9d08821/@@download/attachment/Antibody_Characterization_ENCODE3_February2014.pdf) | February 2014 | [antibodies](../antibodies/encode3-2014.md) |
| [Histone modification antibody standards](https://www.encodeproject.org/documents/bcd825ce-e47b-4c6d-a183-897de4455d74/@@download/attachment/Standards_for_characterizing_histone_modification_antibodies_2008_Nov.pdf) | November 2008 | [antibodies](../antibodies/encode2.md) |
| [ChIP-seq Standards v1.0](https://www.encodeproject.org/documents/59deae6e-231c-4a0e-8509-ed3557e3861a/@@download/attachment/ChIP-seq_standards_v1_2008_Nov.pdf) | November 2008 | [ChIP-seq](../dna-binding/chip-seq/encode2.md) |
| [Chromatin and TF Data Standards v1.0](https://www.encodeproject.org/documents/e82fdfdf-f387-47d8-af03-df67bbea0e72/@@download/attachment/2010-05-30_mod-ENCODE_TF_Chrom_Data_Standards.pdf) | April 2010 | ChIP-seq, ChIP-chip, DNase-seq, FAIRE-seq, methylation, antibodies, general |
| [ChIP-seq, ChIP-chip, DNase-seq, FAIRE-seq and DNAme Standards v2.0](https://www.encodeproject.org/documents/b4a37d2c-b35f-47df-a910-19445e3b549d/@@download/attachment/ChIP_DNase_FAIRE_DNAme_v2_2011.pdf) | July 2011 | the same leaves |
| [DNase-seq and FAIRE-seq Standards](https://www.encodeproject.org/documents/ff0160c5-6671-4b5c-81e1-2dbabe0a97cb/@@download/attachment/DNase-seq_FAIRE-seq_standards_2009_Jan.pdf) | January 2009 | [DNase-seq](../dna-accessibility/dnase-seq/encode2.md), [FAIRE-seq](../dna-accessibility/faire-seq.md) |
| [RNA Standards v1.0](https://www.encodeproject.org/documents/91494746-0ffe-4931-b219-a09802ce1cfa/@@download/attachment/RNA_standards_v1_2011_May.pdf) | May 2011 | [transcription](../transcription/encode2.md) |
| [RNA-seq Best Practices](https://www.encodeproject.org/documents/bda3dcd2-867f-46af-9d06-b363102b37fb/@@download/attachment/RNA-seq_best_practices_page_2009.pdf) | 2009 | [transcription](../transcription/encode2.md) |
| [RIP Standards v2.0](https://www.encodeproject.org/documents/35d6260b-bb08-442d-803b-e43879150e34/@@download/attachment/RIP_Standards_v2_2012_Jan.pdf) | January 2012 | [RIP](../rna-binding/rip.md) |
| [Cell Culture Guidelines](https://www.encodeproject.org/documents/60b6b535-870f-436b-8943-a7e5787358eb/@@download/attachment/Cell_Culture_Guidelines.pdf) | 2008 | [cell culture](../general/cell-culture.md) |
| [Standards for Data Reporting](https://www.encodeproject.org/documents/cfcd1107-9efa-4918-875a-8b1a6c2fe915/@@download/attachment/Standards_for_data_reporting_2009_Jan.pdf) | January 2009 | [data reporting](../general/data-reporting.md) |

## Publications

- Landt SG et al. ChIP-seq guidelines and practices of the ENCODE and modENCODE consortia. Genome Res 2012;22(9):1813-31 ([PMC3431496](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3431496/)). The portal cites it for ENCODE2 ChIP-seq standards. Used in [ChIP-seq ENCODE2](../dna-binding/chip-seq/encode2.md), [ENCODE2 antibodies](../antibodies/encode2.md) and [data reporting](../general/data-reporting.md).
- Hitz BC et al. The ENCODE Uniform Analysis Pipelines. bioRxiv 2023.04.04.535623 ([doi](https://doi.org/10.1101/2023.04.04.535623)). A methods paper with almost no numeric cutoffs. Its statements that contradict the portal pages are noted in the affected leaves. Its supplementary "QC description spreadsheets" define quality-metric fields without cutoffs. Four of the seven were retrieved; bioRxiv rate limits blocked the ChIP-seq, DNase-seq and Hi-C sheets.

## Code

The portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit), commit `9bd8ff18bc5053421d1105a729af4bdb68dab181` (2026-10-06). Used in every `portal-audits.md` leaf and in [audits](../audits/README.md).

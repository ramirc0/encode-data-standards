# DNase-seq

[Root](../../README.md) / [DNA accessibility](../README.md) / DNase-seq

Chromatin accessibility from DNase I cleavage, reported as DNase I hypersensitive sites.

| Leaf | Source | Status |
|---|---|---|
| [ENCODE4](encode4.md) | DNase-seq Data Standards and Processing Pipeline, Dec 2020 | Current |
| [ENCODE3](encode3.md) | DNase-seq Data Standards, no date | Previous; also covers genetic modification followed by DNase-seq |
| [ENCODE2](encode2.md) | 2009, 2010 and 2011 standards documents and the 2012 quality metrics | Archived |
| [Experimental guidelines](experimental-guidelines.md) | ENCODE3 DNase-seq guidelines, January 2017 | Listed as current |
| [Portal audits](portal-audits.md) | encoded audit code at `9bd8ff1` | Enforced |

## Changes between versions

The ENCODE3 and ENCODE4 pages share every threshold. ENCODE3 adds a TALEN rule (homozygous and heterozygous deletion replicates). The ENCODE2 leaf has its own [changes table](encode2.md#changes-across-versions).

| Criterion | ENCODE2 | ENCODE3 and ENCODE4 |
|---|---|---|
| Depth | "typically 20-50 million reads" (2010, 2011) | 20 million uniquely mapping reads minimum for SPOT, 50 million recommended, 100 million for footprints |
| Concordance | Peak overlap tests | Pearson > 0.9 (isogenic), > 0.85 (anisogenic) |
| Enrichment | SPOT on 5 million reads (2012) | SPOT ≥ 0.4 high quality, 0.25 minimally acceptable for rare tissues |

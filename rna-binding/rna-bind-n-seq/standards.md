# RNA Bind-n-Seq: standards

[Root](../../README.md) / [RNA binding](../README.md) / [RNA Bind-n-Seq](README.md) / Standards

Source: [RNA Bind-N-Seq Data Standards](https://www.encodeproject.org/rbns/), updated June 2017 ([snapshot](../../sources/pages/rbns.md)). The page states no ENCODE phase.

Scope: an in vitro assay. A purified recombinant RBP is incubated at several concentrations with random RNAs, and the bound RNAs are recovered and sequenced. The Burge lab (MIT) developed it.

## Protein

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Coomassie gel size and purity | The band of expected size is the only band ("1B"), or the predominant band when several are present ("2B" or "MB") | should |

## Design

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| RBP concentrations | At least 4, preferably 5, plus an input control | should |
| Default concentrations | 5, 20, 80, 320 and 1300 nM recombinant protein | stated |
| Release | Passes [routine metadata audits](../../GLOSSARY.md#routine-metadata-audits) | must |

## Depth

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| Total reads per concentration | At least 2.5 million | should |
| Concentrations with > 10 million total reads | The majority, at least 3 of 5 | should |

## Enrichment and concordance

| Criterion | Threshold | ENCODE wording |
|---|---|---|
| 6-mer [R value](../../GLOSSARY.md#r-value) | > 2 in at least one concentration, for at least one 6-mer | should |
| Exception | R at least 1.4 that agrees with the literature, or cases where an RNA structure rather than a sequence motif is expected | stated |
| 6-mer R values at adjacent concentrations, [Spearman](../../GLOSSARY.md#spearman-correlation) | > 0.9, for all concentrations with significant signal above background | should |

## Conflicts and gaps

- "Significant signal above background" has no stated test or cutoff.
- The page names no tiers. See [portal audits](../portal-audits.md).

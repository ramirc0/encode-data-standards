# Hi-C

[Root](../../README.md) / [3D chromatin](../README.md) / Hi-C

Genome-wide chromatin contacts by proximity ligation. The standards cover intact and in situ Hi-C and genophasing.

| Leaf | Source | Status |
|---|---|---|
| [Standards](standards.md) | HiC Data Standards and Processing Pipeline, September 2022 | Current |
| [Experimental guidelines](experimental-guidelines.md) | ENCODE4 HiC (in situ) v1.0, January 2018 | Listed as current |
| [Computational guidelines](computational-guidelines.md) | ENCODE4 computational guidelines, in situ HiC, July 2018 | Linked from the standards page |
| [Portal audits](portal-audits.md) | encoded audit code at `9bd8ff1` | Enforced |

## Where the sources disagree

In situ Hi-C, percentages of unique reads or read pairs.

| Metric | Standards page | Computational guidelines (Fail / Pass) | Portal audits |
|---|---|---|---|
| Unique total duplicates | 40% maximum | Pass < 40.0%; over 40% "does not constitute library failure" | WARNING > 40 |
| Unique reads in Hi-C contacts | 20% minimum, ideally > 50% | < 20.0% / > 50.0% | NOT_COMPLIANT < 20, WARNING 20 to 50 |
| Reads with ligation motif | 15% minimum | < 5.00% / > 25.0% | NOT_COMPLIANT < 5, WARNING 5 to 25 |
| Unique reads in long-range contacts | 20% minimum, ideally > 35% | < 20.0% / > 35.0% | NOT_COMPLIANT < 20, WARNING 20 to 35 |

# Single cell: portal audits

[Root](../README.md) / [Single cell](README.md) / Portal audits

Source: the ENCODE portal audit code in [ENCODE-DCC/encoded](https://github.com/ENCODE-DCC/encoded/tree/9bd8ff18bc5053421d1105a729af4bdb68dab181/src/encoded/audit) at commit `9bd8ff1` (2026-10-06). Conditions copy the code's operators. Locations are `file:function:lines` under `src/encoded/audit/`. Levels and colors: [audits](../audits/README.md#levels).

No audit reads a single-cell quality metric (the ScAtac, StarSolo and ScrnaSeq metric classes). The [scATAC-seq](sc-atac-seq.md) and [scRNA-seq](sc-rna-seq.md) pages set no thresholds either. The rules below come from shared audits. `single-cell RNA sequencing assay` also covers single cell isolation followed by RNA-seq.

| Flag | Level | Condition | Applies to | Location |
|---|---|---|---|---|
| inconsistent barcode details | WARNING | a library has `barcode_details` | assays other than `single-cell RNA sequencing assay` and `single-nucleus ATAC-seq`. Barcoded `long read single-cell RNA-seq` libraries are flagged. | experiment.py:audit_experiment_single_cell_libraries:1545-1560 |
| unreplicated experiment | NOT_COMPLIANT; INTERNAL_ACTION for tissue and primary cell | zero or one biological replicate | `single-cell RNA sequencing assay` and `long read single-cell RNA-seq` are always exempt. `single-nucleus ATAC-seq` is exempt only with exactly one biological replicate. | experiment.py:audit_experiment_replicated:1522-1540 |
| missing possible_controls | ERROR (NOT_COMPLIANT for older awards) | no possible controls | `single-cell RNA sequencing assay` is exempt for ENCODE4 and ENCODE3 awards | experiment.py:audit_experiment_control:2144-2161 |
| technical replicates with not identical biosample | ERROR | technical replicates use different biosamples | `single-cell RNA sequencing assay` exempt | experiment.py:audit_experiment_replicates_biosample:1949-1959 |
| insufficient read depth | NOT_COMPLIANT | `500000 <= read_depth < 5000000` | `single-cell RNA sequencing assay` processed by the bulk RNA pipelines | analysis.py:check_file_read_depth:114-116 |
| extremely low read depth | ERROR | `read_depth < 500000` | same | analysis.py:check_file_read_depth:117-119 |

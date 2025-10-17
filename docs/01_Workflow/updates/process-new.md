# Process Changes

**Notes:**  

1. Suggestions for process change that occur *before* REDCap entry or *within* the REDCap environment itself are **beyond the scope** of this post-REDCap project.  

2. The process changes listed below are vital to ensure the BNR Refit automation remains usable into the future. The entire system depends on the continued ability to automatically extract and append new cases to a standard-structure cumulative dataset.

**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| SUGGESTED CHANGE | RATIONALE | HOW WILL WE HELP | RESOURCE |
|--------------|---------|------------------|--------------|
| **REDCap database audit** | ➤ We observe that since database creation, it's structure has been changed repeatedly, without a record of these changes.<br>➤ Perform audit to reset to best practice for the future. | ⓘ Advise |🟨<br>[See Data Handling Process Audit](../bnr-process-audit.md)|
| **REDCap database alignment** | ➤ We have ensured the cumulative dataset now aligns with the current REDCap database. Previously, alignment was poor. <br>➤ But - further database and dataset changes are likely needed| ⚙ Contribute |❌<br>[See data dictionary](../../02_Data/structure.md)|
| **Duplicates handled within REDCap**<br><br>**Use query system within REDCap**  | ➤ To manage and resolve duplicate case entries directly at source rather than post-dataset extraction.<br>➤ And, to re-initiate the logging, tracking, resolution of data queries within REDCap.<br>➤ Important to separate data cleaning (should be entirely within-REDCap) and data analytics (entirely post-REDCap).<br>➤ Before this Refit, data cleaning was performed post-REDCap to cover for REDCap cleaning inadequacies. | ⓘ Advise |❌<br>|
| **Develop process for final case review and sign-off** | ➤ To confirm that all fields in REDCap are complete and verified by a senior staff member. | ⓘ Advise |🟨<br>[See dataset release process (Step 5)](../../02_Data/dataset-release.md)|
| **Initiate case-level record lock in database** | ➤ To prevent further edits to verified records and protect data integrity before export.<br>➤ To designate records as ready for export. | ⓘ Advise |❌<br>|
| **Reduce number of database variables further** | ➤ To simplify the data model and improve long-term maintainability of the system. | ⓘ Advise |❌<br>|
| **Automate monthly data extractions of locked cases only** | ➤ To ensure each extraction is clean, reproducible, and limited to verified data ready for reporting. | 🗹 Lead |❌<br>|
| **Reassess how to use death data** | ➤ To clarify death record data quality, and to assess how this should be used in the new analytic system. | 🗹 Lead |🟨<br>[See statistical analysis plan](../../03_Reporting/sap.md)|

<br>

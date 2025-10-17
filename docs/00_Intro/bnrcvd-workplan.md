==IH Reviewed (16-Oct-2025)==

# BNR CVD Refit Project Plan  

|  | KEY MILESTONES | DATE | 
|----|------|------------------|
| ✅ | **Official Start:** | October 1st, 2024 |
| ✅ | **Contract Produced / Signed:**  | April 7th, 2025 |
| ✅ | **Cumulative CVD dataset reviewed by:**  | June 30th, 2025 |
| 🟨 | **Cumulative CVD dataset created by:**  | Oct 30th, 2025 |
| ❌ | **Hard Deadline:** Annual report 2023 | Nov 30th, 2025 |
| ❌ | **Project Completion:** | Feb 28th, 2026 |
 
## Introduction  

This page is our **living project tracker** for the BNR–CVD Refit. It provides a week-by-week breakdown of planned activities, a brief descriptions for each task, expected deliverables, and a simple note of whether the task is Not Started (❌), Underway (🟨), or Completed (✅).  

The aim of this refit is to create a **sustainable, reproducible and open analytical framework** for the Barbados National Registry (CVD component).  

By the end of February 2026, the project will:  

1. Deliver a semi-automated **Stata package (`bnrcvd.pkg`)** to generate reports from exported registry data.  
2. Produce a final **2023 Annual Report (PDF)** using the new automation pipeline.  
3. Produce suggested **Monthly** and **Administrative** reports as needed.
4. Establish clear **Data Sharing and Trust Agreements (DSTA)** for long-term data governance.  
5. Publish a **self-paced learning and documentation website**, currently hosted at [ianhambleton.github.io/bnr-refit](https://ianhambleton.github.io/bnr-refit).  

---

!!! warning

    The Refit project assumptions included the following caveat for successful operation:

    > The BNR must produce and share clean cardiovascular datasets for all years of operation.

    The BNR project was unable to produce a cumulative dataset of CVD cases. The Refit project therefore extended it's remit to include a pre-processing phase (Phase 0 below). **This phase aimed to produce a definitive cumulative record of CVD cases, from BNR initiation to end-2023.**

## Phase 0 – Pre-Project Dataset Preparation  
**Dates:** June - October 2025   
**Focus:** Reconstruction of BNR–CVD datasets (2009–2023)  
**Key:**  ❌ Not started 🟨 Underway ✅ Completed  

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ✅ | Append 2021 data to 2009–2020 datasets | Combine historical stroke and heart datasets into unified 2009–2021 dataset using official dataset naming conventions. | Extended longitudinal dataset (2009–2021) ready for review. |
| ✅ | Evaluate historical cleaning do-files | Review 2022 legacy Stata scripts to understand prior data correction logic and identify inconsistencies. | Documented lessons from past cleaning workflows for reuse. |
| ✅ | Assess 2022 dataset usability | Test 2022 abstraction data for structure and completeness; determine whether safe to append. | Determined dataset not suitable for inclusion; corrective actions noted. |
| ✅ | Review 2022 ineligibles | Generate ineligibility flag variable categorising cases (e.g. clinical rejection, miscoding, discharge diagnosis). | 2022 dataset annotated with ineligibility classifications. |
| ✅ | Export 2023 dataset and initialise do-files | Extract latest REDCap data and create initial cleaning scripts for 2023 dataset. | Initial 2023 dataset and template do-files established. |
| 🟨 | Review 2023 ineligibles | Apply same flagging logic used for 2022 to maintain consistent categorisation. | 2023 dataset annotated with ineligibility classifications. |
| 🟨 | Combine 2022 + 2023 datasets | Merge 2022 and 2023 incidence data using restructured format compatible with prior years. | Combined two-year CVD dataset (2022–2023) prepared. |
| 🟨 | Clean 2022 + 2023 death data | Standardise variable names, date formats, and cause-of-death codes for death registry subset. | Clean death registry data ready for matching. |
| 🟨 | Clean combined 2022 + 2023 datasets | Conduct final cleaning and variable reconciliation for merged incidence datasets. | Harmonised 2022–2023 CVD dataset (pending final checks). |
| ✅ | Restructure 2009–2021 dataset | Align older variables with new 2023 schema to support longitudinal merging. | Restructured legacy dataset matching new schema. |
| ✅ | Combine heart and stroke datasets | Merge restructured BNR-Heart and BNR-Stroke datasets into a unified CVD dataset. | Single comprehensive CVD dataset (2009–2021). |
| ❌ | Merge 2022 + 2023 death data with legacy dataset | Link cleaned 2022–2023 death records to unified 2009–2021 dataset to generate full mortality linkage. | Complete CVD mortality-linked dataset (pending merge). |
| ❌ | Append cleaned 2022 + 2023 data | Append final 2022–2023 incidence data to legacy dataset post-merge. | Updated longitudinal CVD dataset (2009–2023). |
| ❌ | Create data-quality check table | Produce summary table of all cleaning checks (missingness, validity) for internal quality report and rule validation. | Data-quality summary table for IH and DQ rule development. |
| 🟨 | Generate flagged data issues report | Produce descriptive report using flag variables to summarise all identified data anomalies. | Internal issue log and DQ recommendations report. |
| 🟨 | Maintain queries log | Continue recording data issues and potential new DQ rules in “Queries Log for Christina.” | Updated ongoing data-quality tracking file. |
| ✅ | Locate raw data sources | Attempt to retrieve original raw case-finding and abstraction datasets (2009–2021) from shared drives and archives. | Confirmed archival status: only partial backups available. |
| ❌ | Develop audit report | Produce summary report of findings, corrective solutions, and outcomes. | Audit report posted to Refit website. |
| ❌ | Create current ```do``` file repo | Create annotated repo of active ```do``` files. | Active ```do``` files posted to GitHub repo. |
| ❌ | Create current ```document``` repo | Create annotated repo of active ```documents``` describing the new process. | Active ```documents``` posted to GitHub repo. |


**Outcomes:**  

- All major reconstruction tasks required for automation readiness completed.  
- The unified BNR–CVD dataset (2009–2023) existing in restructured form and can serve as the foundation for the forthcoming automated analytics system.

---

## Week 1 – 20 to 26 October 2025  
**Focus:** Project Reset & Stata Package Skeleton  
**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Confirm dataset structure | Finalise BNR–CVD variable names, formats, ICD mapping, date and missingness rules. | Locked data dictionary for CVD dataset. |
| ❌ | Document dataset structure | Add data dictionary to website. | Documented data dictionary for CVD dataset. |
| ❌ | Create repository & folders | Build project directories (`/src`, `/pkg`, `/docs`, `/examples`, `/tests`, `/output`). | Working Git repository for bnrcvd development. |
| ❌ | Set up package skeleton | Create `.pkg` and placeholder ado/help files (`bnrcvdannual`, `bnrcvdmonthly`, `bnrcvdadmin`). | Installable Stata package structure. |
| ❌ | Establish configuration file | Create `bnrcvdconfig.do` defining data paths, output folders, and registry standards. | Consistent configuration template. |
| ❌ | Draft DSTA v1 | Outline objectives, scope, data classes, and sign-off roles for data governance. | Draft 1 of Data Sharing & Trust Agreement. |
| ❌ | Document DSTA v1 | Add drafts to website for review. | Draft 1 of Data Sharing & Trust Agreement. |
| ❌ | Test PDF generation | Generate a test PDF using `putpdf` with text, table, and figure placeholders. | Verified PDF export pipeline. |
| ✅ | Website scaffolding | Add initial pages under structure: *Intro*, *BNR Process*, *Data*, *Analysis & Reporting*, *Technical*, *Training*, *Downloads* . | Initial GitHub Pages visible online. |

---

## Week 2 – 27 October to 2 November 2025  
**Focus:** Core Analytics (CVD)  
**Key:** ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Develop `bnrcvdutil` tools | Add functions for age-standardisation, gamma CIs, safe filenames, denominator handling. | Shared utility library operational. |
| ❌ | Implement `bnrcvdmonthly` logic | Generate key indicators: case counts, fatality, completeness, trend tables. | Prototype monthly analytics output. |
| ❌ | Implement `bnrcvdannual` logic | Compute incidence, mortality, ASIR, ASMR, and performance measures. | Core analytics ready for testing. |
| ❌ | Link analytics to `putpdf` | Create formatted PDF tables and figures with captions, titles, and legends. | Automated report population. |
| ❌ | Draft DSTA v2 | Expand governance language, data roles, and access request workflow. | Reviewed DSTA draft 2. |
| ❌ | Website: Analytics Engine | Add “BNR-CVD Analytics Engine” explanation with code snippets. | Updated documentation page. |

---

## Week 3 – 3 to 9 November 2025  
**Focus:** Annual Report Prototype  
**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Assemble report sections | Use `bnrcvdannual, year(2025) draft` to produce all sections: cover, exec summary, heart, stroke, appendices. | Prototype annual report layout. |
| ❌ | Integrate tables/figures | Embed standardised visuals from analytics modules into the PDF. | Tables and figures automatically generated. |
| ❌ | Apply branding | Add BNR header/footer, colour scheme, and consistent figure styles. | Professional design consistency. |
| ❌ | Add validation scripts | Begin cross-checking denominators, totals, and missing values. | Validation pipeline prototype. |
| ❌ | Website: Report Generation | Add “Generating the Annual Report (PDF)” tutorial. | Public walkthrough of reporting pipeline. |

---

## Week 4 – 10 to 16 November 2025  
**Focus:** Validation & Refinement  
**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Cross-validate data | Compare computed results to manual checks or prior-year data. | Validated key indicators. |
| ❌ | Add performance metrics | Integrate AMI and Stroke quality-of-care measures into PDF output. | Updated report metrics section. |
| ❌ | Export CSVs | Automatically export key tables to CSV for transparency. | CSV dataset bundle alongside PDF. |
| ❌ | Implement `bnrcvdadmin` tools | Build commands: `check`, `completeness`, `makesample`. | Quality control and sample data utilities. |
| ❌ | Produce v0.9 candidate | Run pipeline end-to-end to generate draft 2025 report. | Release candidate report (RC1). |
| ❌ | Website: Validation Page | Publish “Validation and QA” documentation. | Public documentation update. |

---

## Week 5 – 17 to 23 November 2025  
**Focus:** Pre-Release Polish  
**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Editorial review | Standardise captions, titles, terminology, and grammar. | Text-consistent report. |
| ❌ | Add reproducibility metadata | Include build timestamp, git hash, and dataset signature in the PDF. | Transparent provenance section. |
| ❌ | Finalise methods text | Add methods, definitions, and interpretation guidance. | Ready-to-publish content. |
| ❌ | Prepare release artifacts | Create zip bundle of report, CSVs, logs, and code. | Ready for GitHub release. |
| ❌ | Website: Release Notes | Add “Reproducible Build & Release Notes” page. | Published release documentation. |

---

## Week 6 – 24 to 30 November 2025  
**Focus:** Final Annual Report Delivery  
**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Run final pipeline | Execute `bnrcvdannual, year(2025) final` with official dataset. | Final 2025 Annual Report (PDF). |
| ❌ | Validate outputs | Verify all figures and tables match specification. | QC-checked publication. |
| ❌ | Tag and release | Tag `v0.9.0` on GitHub with all artifacts. | Public release of code + report. |
| ❌ | Update website | Upload report and release notes with permanent links. | Website reflects completed milestone. |

---

## December 2025 – Governance & Documentation  
**Break:** 22 Dec – 4 Jan   
**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Finalise DSTA v3 | Complete MoH and GA-CDRC sign-off draft with retention, breach, and audit clauses. | Signed draft agreement. |
| ❌ | Add governance page | Summarise data governance model for public website. | Transparency & trust documentation. |
| ❌ | Add workflow diagram | Show data access → review → approval → release. | Clear visual workflow published. |
| ❌ | Develop user guide | Step-by-step instructions for install, config, report generation. | User documentation in Markdown. |
| ❌ | Develop developer guide | Document internal architecture, utils, testing conventions. | Technical documentation. |
| ❌ | Expand `bnrcvdadmin` metrics | Add completeness/timeliness dashboards and run logs. | Enhanced admin toolkit. |
| ❌ | Website: Training modules | Add “Using the CLI”, “Building Reports”, and “Interpreting Results” lessons. | Online training live. |

---

## January 2026 – Hardening & Handover  

### Week 1 – 5 to 10 January 2026  
**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Extend monthly reports | Add rolling 12-month and prior-year comparisons. | Improved trend analytics. |
| ❌ | Improve diagnostics | Enhance error messages, add run logs and runtime metrics. | More robust CLI package. |

### Week 2 – 11 to 20 January 2026  
**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Cross-link documentation | Integrate CLI help with GitHub Pages documentation. | Unified doc ecosystem. |
| ❌ | Add glossary & FAQ | Clarify terminology and command usage. | Improved usability. |
| ❌ | Final run | Test all functions on full historical dataset. | Verified stable release. |
| ❌ | Tag final release | Tag `bnrcvd v1.0.0` and update changelog. | Final, stable version published. |

### Week 3 – 21 to 30 January 2026  
**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| ✅ | Task | Full Description | Result / Deliverable |
|----|------|------------------|----------------------|
| ❌ | Publish final website | Upload all docs, tutorials, and data governance info. | Live, complete GitHub Pages site. |
| ❌ | Deliver handover pack | Provide final report, SOPs, user guide, and release summary to BNR lead. | Official project closure. |

<br>

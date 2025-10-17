# BNR Continuous Dataset Release and Tiered Access

**Document Type:** Standard Operating Procedure (SOP)  
**Document Version:** v0.9  
**Effective Date:** ==[Insert Date]==  
**Author:** Ian Hambleton  
**Approved by:** Christina Howitt - BNR Technical Lead  

---

## 1. Purpose
To outline the standardized process for: 
- Monthly release of cumulative data for the cardiovascular (CVD) components of the BNR, with datasets released separately as *acute myocardial infarction (AMI)* and *stroke*.
- Creation of tiered dataset versions based on data sensitivity.
-  Controlled access to datasets according to dataset tier, user roles and authorizations.

---

## 2. Scope
This SOP applies to all personnel involved in BNR data processing, analysis, and dissemination related to cardiovascular diseases (AMI and stroke).

## 3. Definitions
**Full Dataset:** Contains all identifiable and clinical information.  
==For a full data dictionary, see XX==

**De-identified Dataset:** Direct identifiers removed; may contain dates and quasi-identifiers.  
==For de-identification details, see XX==

**Anonymized Dataset:** Irreversibly stripped of identifiers and indirectly identifying information.    
==For anonymisation details, see XX==

**Primary Data Points:** Data points required to conduct the core analytical output from the BNR. For CVD cases, these primary data points will allow the calculation of CVD incidence, mortality, 28-day survival.   
==For details, see data dictionary and CVD analysis plan==

**Sign-off:** Approval step confirming a dataset version is ready for release.

## 4. Responsibilities
These responsibilities may not exist as separate roles within the BNR. Roles should be allocated and formalised with staff.

| Role                | Responsibility                                          |
| ------------------- | ------------------------------------------------------- |
| QC Coordinator      | Weekly data cleaning, QC logging, anomaly flagging      |
| Data Abstractors    | Timely data entry and verification                      |
| Statistician        | Versioning, dataset creation scripts, and documentation |
| Technical Lead      | Final sign-off on dataset release                       |
| Data Access Manager | Access control oversight and authorization              |

---

## 5. CVD Case Sign-off  
==Clarify Process==

**Timeline:** Each Monday

The cleaning of data from abstracted CVD cases is a continuous BNR process. At some point, there are no further data queries related to an abstracted case, and that case is then ready for review and sign-off by the BNR Technical Lead. 

For each CVD case, the sign-off process should include the following steps:

**Tasks:**

- Final review of current QC status. 
- Final review of audit trail for QC corrections.
- Final review of **primary** data points
- For missing data points, ensure reason for missingness exists in REDCap. 
- Return remaining anomolies to QC team for correction within 1 week.
- Individual REDCap sign-off of completed case records by Team Lead.

---

## 6. Cumulative Dataset Release
A cumulative release of the *CVD-AMI* dataset and the *CVD-Stroke* dataset will be created once each month. 

**Release Date:** First working day of each month

**Datasets:** 

- One AMI dataset, 
- One stroke dataset, 
- One combined CVD dataset

**Included records:** All cumulative releases + all CVD cases for which abstraction has been completed and the REDCap case record has been electronically-signed and locked by the BNR Team Lead as clean. 

**Dataset Naming Convention:**

- `BNR-<TYPE>-<TIER>-<YYYYMM>.dta`

- (Example) `BNR-AMI-DEID-202509.dta`

- (Example) `BNR-STROKE-ANON-202509.dta`

**Release Folder Structure:**

- `/data/releases/YYYY/MM/`

- `FULL/`

- `DEID/`

- `ANON/`

**Dataset Formats**
Each released dataset will be provided in multiple formats:

| Format  | Description                                                                                                    |
| ------- | -------------------------------------------------------------------------------------------------------------- |
| `.dta`  | **Stata binary file** (primary working format, includes labels, formats, internal metadata)                    |
| `.csv`  | **Non-proprietary, comma-separated format** (for general use, readable in most statistical software and Excel) |
| `.json` | **Machine-readable format** useful for integration with dashboards, data visualization tools, or APIs          |
| `.txt`  | **Metadata file** summarizing variables, definitions, coding, and notes (accompanies each release)             |

---

## 7. Tiered Dataset Creation
#### ==See the dataset dissemination SOP for details==

**Small Island Privacy Considerations:** Given the BNR's context in Barbados, a small island developing state (SIDS) with a population of ~280,000, the risk of potential re-identification from seemingly benign combinations of data is higher than in larger jurisdictions. Even when direct identifiers are removed, indirect identifiers ("quasi-identifiers") may allow individuals to be re-identified when cross-referenced with external datasets or local knowledge. This consideration is key in our process of de-identification ([section 7.2](#72-de-identified-dataset)), anonymisation ([section 7.3](#73-anonymised-dataset)), and review of identifiability risk ([Section 8](#8-identifiability-risk)).

### 7.1. Full Dataset
These datasets are maintained as an Individual Level Data (ILD), with one row of data per CVD event. All collected variables are retained in this dataset, including names, exact dates, hospital IDs. For internal BNR team use only.

### 7.2. De-identified Dataset
These datasets are maintained as Individual Level Data (ILD), with one row of data per CVD event. Compared to the full dataset, de-identified datasets are altered as follows: 

- Removal of direct identifiers:

    - Full names.
    - National ID numbers.
    - Addresses (home, work).
    - Personal contact information.

- Masking or modification of quasi-identifiers:

  - Exact date of birth → replaced with age at event to nearest year.
  - Exact dates of admission/treatment/discharge → replaced with month and year.
  - Geographic data: parish may be retained; smaller location units (e.g. specific clinics or villages) suppressed.
  - Occupation suppressed. 
  - Rare events suppressed.
  - Ethnicity, nationality, or religion suppressed. 

### 7.3. Anonymised Dataset
These datasets are maintained as Individual Level Data (ILD), with one row of data per CVD event. Compared to the full dataset, anonymised datasets are altered as follows: 

All identifying and quasi-identifying fields removed or generalized.

- Dates removed entirely (e.g. event year only or time since event).
- Age binned (we use 5-year intervals to allow rate standardization with an 18-group standard world population).
- Rare events suppressed.
- Categorical variables with unique or rare responses either:
  - Aggregated (e.g., rare occupations grouped as "Other"), or
  - Suppressed

### 7.4 Aggregated Dataset
Aggregated datasets contain group-level summaries (e.g., counts, rates, percentages) with no individual-level records. These are the preferred format for external sharing, including open data releases with registered DOIs.

- To protect confidentiality in small-population settings:

- Suppress all cell counts <5; use <10 for sensitive topics (e.g., HIV, suicide).

- Apply secondary suppression to prevent deduction of suppressed values from totals.

- Do not report percentages or rates if the underlying denominator is <20.

- Use only approved disaggregation levels (e.g., sex, broad age group, national or large-region geography).

Include the following footnote in all outputs:

> Counts fewer than 5 have been suppressed to protect confidentiality. Additional suppression may be applied where necessary.

Before release, aggregated datasets must undergo review for suppression compliance, metadata completeness, and re-identification risk. For open data publication, assign a CC BY 4.0 license, register a DOI, and provide a recommended citation format.  
==See the dataset dissemination SOP for details.==


### 7.5 A note on cell suppression

Due to the sensitive nature of the BNR, we generally suppress cells where the overall stratified count per year is less than 5 to protect confidentiality. 

Additional suppression is applied where the risk of re-identification is high due to geography, rare outcomes, or small subgroups.”

**Our general suppression practices:**
- *Primary suppression:* Always suppress the cell that’s under the threshold.

- *Secondary suppression:* Suppress other cells as needed to prevent back-calculation (especially in totals).

- *Sensitive topics:* Use <5 or even <10 depending on severity (e.g., suicide, HIV, domestic violence).

- *Aggregated data:* Consider rounding or ranges if suppression would remove too much information.

---

## 8. Identifiability Risk

To ensure appropriate anonymization, each month we will perform an analytical review of identifiability risk.  

**Small Cell Count Suppression**

- Run frequency tables for all combinations of age, sex, event type, and geography.

- Suppress cells with n < 5.

**Re-identification Risk Analysis**

Perform k-anonymity / l-diversity checks across:

- Age × Sex × Parish

- Age × Event type × Admission month

- Age × Outcome × Length of stay

If k < 5, aggregate or suppress variable combinations.

**Human Oversight**

A designated Data Privacy Officer or equivalent will manually review output prior to dataset sign-off. Any concerns of potential identifiability are flagged and discussed with the Technical Lead prior to release.

---
## 9. Access Levels 

There are levels of proposed access for the four dataset types (full dataset, de-identified, anonymised, aggregated).

| Dataset Tier  | Typical Users                          | Access Level | Approval Required  |
| ------------- | -------------------------------------- | ------------ | ------------------ |
| FULL          | Internal registry staff                | Read/Write   | Technical Lead     |
| DE-IDENTIFIED | Approved researchers with IRB approval | Read-only    | Technical Lead     |
| ANONYMIZED    | General public, policy makers          | Read-only    | None (Open Access) |
| AGGREGATED    | General public, policy makers          | Read-only    | None (Open Access) |

Request Process:
- Access request form
- MOH/IRB approvals
- Review by Data Access Manager

---

## 10. Audit and Logs
Maintain logs for:
- Dataset creation and versioning (automated timestamps)
- Sign-offs and access approvals
- Dataset download activity

---

## 11. Data Integrity and Security
- All scripts and data securely stored and version controlled
- Monthly backups performed and archived
- Encryption always required for external transfers

---

## 12. Version Control
Each dataset release includes:
- Metadata file (`.txt`)
- Record of total cases and changes since last release
- Stored in: BNR-CVD-METADATA-<YYYYMM>.txt
  
---

## 13. Review and Updates
- SOP reviewed annually or after major system or policy changes
- Changes approved by BNR governance team
</br></br>
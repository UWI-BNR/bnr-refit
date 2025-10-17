# BNR Data Sources and Provenance

## Advice for future improvement

As the BNR evolves, maintaining clear documentation and traceable data processes will be key to sustainability. These recommendations focus on strengthening transparency, automation, and data provenance without adding unnecessary complexity to daily operations.

---

## 1. Data Sources

The BNR draws on several national and clinical data streams that together provide a comprehensive picture of cardiovascular disease in Barbados. Each source contributes unique information, from hospital admissions to death records, forming the foundation of the registry’s evidence base.

==Draft. Christina to review / improve Table==

| **Source Name** | **Primary Data Collected** | **Format / Access** | **BNR Use** | **Responsible Unit** |
|------------------|-----------------------------|----------------------|--------------|----------------------|
| **Queen Elizabeth Hospital (QEH)** | Admissions, discharges, diagnosis (ICD-10), treatment details, outcomes | Paper forms, hospital logs, electronic (REDCap entry) | Identify and abstract confirmed cases of acute MI and stroke | BNR Abstractors (GA-CDRC) |
| **National Death Registry / Civil Registry** | Death certificates, cause of death as text, date and place of death | Electronic records and certified paper copies | Identify Underlying cause of death (ICD-10). Identify out-of-hospital deaths and confirm mortality outcomes | Civil Registry & BNR Verification Team |
| **Private Sector Providers** | Clinical notifications, case reports, discharge notes | Manual notifications, letters, or digital submissions | Improve completeness of registry case capture | BNR Outreach / Private Physician Liaison |
| **Coroner and Autopsy Reports** | Post-mortem confirmation of cause of death | Paper reports and summary logs | Validate cases with uncertain or sudden death | BNR Verification Officer / Pathology Dept. |
| **BNR REDCap Registry Database** | Harmonised case records across all sources | Secure electronic database with record-level audit trail | Serves as the “single source of truth” for all validated cases | BNR Data Management Team |

---

## 2. Overview

The Barbados National Registry (BNR) brings together information from several national data sources to track cardiovascular disease in Barbados.   Each source contributes one part of the national picture: QEH provides the clinical detail, death registration validates outcomes, private providers improve completeness, and the coroner confirms uncertain cases.  

To sustain data quality as the registry grows, it is essential to record the **provenance** — the “chain of custody” — for every data record.  

Rather than complicating the main registry, we propose that this could be done through a **supplementary REDCap project** that stores structured metadata linked to key identifiers in the main BNR database.

This would be a lightweight companion system creating transparency and long-term traceability without changing existing workflows.

---

## 3. Summary Table: Suggested BNR Provenance System

| | **Goal / Function** | **What to Capture** | **Where / How Captured** | **Frequency** | **Sustainability Features** |
| |----------------------|--------------------|---------------------------|----------------|-----------------------------|
|3.1| **Identify data source** | Source type (hospital, death registry, private, coroner); source reference ID | As REDCap fields in the main project and copied to provenance log | At data entry | Simple categorical fields; minimal added workload |
|3.2| **Track record creation and edits** | Date/time, user ID, project, and record ID | Automatically via REDCap audit log and periodic API extract | Weekly or monthly | Built-in REDCap logging; no extra coding |
|3.3| **Record verification / lock status** | Verified by, verification date, lock date, lock status | Manual or automated update to provenance log | Monthly | Mirrors existing dataset sign-off process |
|3.4| **Link provenance to record** | Record ID (same as main registry), event, user, timestamp, notes | One row per event in supplementary project | Ongoing | Enables full traceability while separate from main data |
|3.5| **Capture data transformations** | Export date, export script/ADO version, dataset version | Embedded in Stata DTA during monthly export | Monthly | Auto-generated; self-documenting datasets |
|3.6| **Maintain source mapping** | Source variable ↔ REDCap variable mapping; data import rules | Stored as CSV/Markdown file in documentation repository | Reviewed annually | Provides continuity during staff turnover |
|3.7| **Visualise provenance** | Dashboard or summary table of data activity | Derived from provenance project and audit log | As needed | Python script or Looker Studio view |

---

## Detailed explanations

### 3.1 Identify Data Source
For each case, key variables within the main BNR REDCap project should clearly indicate their data origin.  
Key metadata fields could include:  
- `source_type` (hospital / death_registry / private / coroner)  
- `source_reference_id` (e.g., hospital MRN, death certificate number)  
- `collector_id` (the data abstractor or notifier)  
These fields simply label where information came from. This metadata can be read by the supplementary provenance project via REDCap’s API.

---

### 3.2 Track Record Creation and Edits
REDCap automatically logs every change, user, and timestamp.  
The provenance system could export and store this **audit log** at regular intervals using the API.  
Each export forms a “snapshot” of user activity that can be merged with the provenance project for summary reports such as:
- “Who created this record?”
- “When was it last edited?”
- “Which fields changed between versions?”

---

### 3.3 Record Verification and Lock Status
Once a record is verified in REDCap and locked for export, the provenance project could receive a short metadata record:

| Field | Example |
|--------|----------|
| record_id | HEART_2025_0123 |
| verified_by | I.Hambleton |
| verified_date | 2025-03-15 |
| lock_status | locked |
| notes | “Checked against discharge summary and death record” |

This provides an independent trace of the registry’s quality assurance cycle without modifying the main project.

---

### 3.4 Link Provenance to Record
The **supplementary provenance project** acts as a parallel audit register.  
Each row in the provenance project corresponds to one event in the main registry and includes:
- `record_id` — matching the primary REDCap record ID  
- `source_type` and `source_reference`  
- `event_type` (e.g. created, edited, verified, locked, exported)  
- `user_id` and `timestamp`  
- `validation_status` (e.g. pending / verified / locked)  

The linkage between the two projects relies on the shared **record_id** variable.  
This means you can generate provenance summaries or trace a record’s history without - theoretically - accessing personal health data.

---

### 3.5 Capture Data Transformations
Every monthly dataset export (from TREDCap) should automatically capture:
- `export_date`  
- `exported_by`  
- `ado_version` or script version  
- `redcap_project_id`  
- `dataset_hash` (optional)  

These details can be appended to a simple “export manifest” file that accompanies each dataset.  
Over time, this creates a verifiable timeline of data releases — essential for reproducibility.

---

### 3.6 Maintain Source Mapping
A lightweight **Source Mapping Register** can live outside REDCap in your documentation repository.  
It’s a table that lists how each variable from QEH, Death Registry, or Private Providers maps to REDCap variables, for example:

| Source | Source Variable | REDCap Variable | Mapping Rule | Verified By |
|---------|----------------|----------------|---------------|-------------|
| QEH Discharge Summary | “Main Diagnosis” | `icd10_code` | Direct ICD lookup | Data Abstractor |
| Death Registry | “Date of Death” | `death_date` | 1:1 field mapping | Data Verifier |
| Private Clinic | “Event Date” | `onset_date` | Manual entry | Liaison Officer |

This table ensures that the data lineage is transparent and survives staff turnover.

---

### 3.7 Visualise Provenance
Once the supplementary project is populated, a dashboard might show:
- Records created per week (by source)  
- Verification rate per abstractor  
- Time between creation and lock  
- Frequency of edits or re-verifications  

These can be produced using Stata, python, or perhaps Looker Studio - pulling from the provenance REDCap API, allowing live transparency of the registry workflow.

---

## 4. Supplementary REDCap Provenance Project

Instead of embedding provenance fields into the main REDCap database, the BNR might maintain a **standalone Provenance Project** that records all key metadata about case creation, verification, and export.

### Design Concept
- **One record per provenance event** (not per patient)  
- **Core variables:**  
  - `record_id` (from main registry)  
  - `event_type` (`create`, `edit`, `verify`, `lock`, `export`)  
  - `source_type` (`hospital`, `death_registry`, `private`, `coroner`)  
  - `source_reference` (MRN, death cert ID, etc.)  
  - `user_id` (REDCap username or initials)  
  - `timestamp` (system date/time)  
  - `notes` (optional)  

### Linking Mechanism
- Both projects share the same `record_id`.  
- The provenance project receives data through:
  1. **Data Entry Triggers** or **REDCap API calls** from the main project when a new record or lock event occurs.  
  2. **Automated monthly upload** from the Stata export scripts (which already handle locking and cumulative dataset creation).  

### Advantages
- Keeps provenance separate from clinical data (no added complexity).  
- Reduces risk of accidental exposure of health information.  
- Can be mirrored or archived independently for audit and quality assurance.  
- Works with low-resource infrastructure — only uses REDCap’s standard API and logging tools.  

---

By adopting this lightweight, linked provenance project, the BNR could ensure that every record’s journey — from hospital form to verified case — is fully traceable, technically sustainable, and compliant with good data governance practice, without disrupting existing workflows or adding unnecessary complexity.

<br>

# BNR–CVD Data Handling Process

==Oct 15, 2025. Placeholder file.== 

==This is a very basic starting point== 

==For Correction & Expansion by Jacqui==

This page documents the **current operational process** for the Barbados National Registry (BNR) Cardiovascular Disease components (BNR–Stroke and BNR–Heart).  
It describes *how data move today* through three handling stages: **Pre-REDCap**, **Within-REDCap**, and **Post-REDCap**.  

The structure below shows each phase with its purpose, steps, and notes.

---

## 1) Pre-REDCap Data Handling Process  
*(before any data entry)*  

| **Element** | **Description** |
|--------------|----------------|
| **Purpose** | Identify potential stroke and heart-attack cases, confirm eligibility, and prepare standardised abstractions for data entry. |
| **Case Identification** | - **Active:** routine ward visits to QEH (A&E, medical wards, radiology, rehabilitation, death records) and major polyclinics.<br>- **Passive:** notifications from hospitals, physicians, and clinics.<br>- **Death-Certificate-Only (DCO):** national death register checked for ICD-10 CVD codes.<br>- **Private sector:** engagement with private hospitals and emergency clinics. |
| **Eligibility Confirmation** | - **Definitions:** WHO/ICD-10 for AMI; WHO STEPS for stroke.<br>- **Residency:** ≥6 months in Barbados in previous 12 months.<br>- **Scope:** all ages; recurrent events retained; *First-Ever Stroke (FES)* flagged.<br>- **De-duplication:** resolved before abstraction. |
| **Abstraction Preparation** | - Use standard, version-controlled **Case Reporting Forms (CRFs)**.<br>- Pre-check for completeness, coherence, and ICD coding.<br>- Flag missing data, ambiguous eligibility, or irretrievable notes for review.<br>- All suspected events logged on a **Notifications** list with status (eligible/ineligible/pending). |
| **Responsible Staff** | Data abstractors (BNR-Stroke, BNR-Heart), QC coordinator, and technical lead. |
| **Reference** | 2014 Quarterly Reports; 2019 Process Change Workshop; BNR operational SOPs. |

---

## 2) Within-REDCap Data Handling Process  
*(data capture and management)*  

| **Element** | **Description** |
|--------------|----------------|
| **Purpose** | Capture abstracted data in REDCap databases with internal validation, ensuring traceability and quality. |
| **Data Entry** | - Separate instruments for *Notifications* and *Abstractions*.<br>- Direct data entry from CRFs via laptops or tablets.<br>- Standard variable names and formats across stroke and heart datasets.<br>- Outcomes recorded at discharge, 28-day, and 1-year follow-up points. |
| **Validation & Quality Control** | - Built-in validation: required fields, range and logic checks, branching rules.<br>- Scheduled re-abstraction and discrepancy review by **QC coordinator**.<br>- Every edit logged with user, timestamp, and note.<br>- Instrument updates triggered by CRF version changes. |
| **Operational Notes** | - **Staff roles:** abstractors, follow-up nurse, QC coordinator, epidemiology/statistics lead.<br>- **Priorities:** hospitalised events entered first, followed by community or DCO cases.<br>- **Paperless transition:** progressive replacement of paper CRFs with direct electronic abstraction. |
| **Outputs from this phase** | Clean, validated REDCap dataset with complete metadata and audit trail, ready for export. |
| **Reference** | 2021 Annual Report; 2019 Process Workshop; registry internal REDCap configuration notes. |

---

## 3) Post-REDCap Data Handling Process  
*(extraction, curation, analysis, and reporting)*  

| **Element** | **Description** |
|--------------|----------------|
| **Purpose** | Convert REDCap data into analytical datasets for reporting, quality improvement, and policy monitoring. |
| **Extraction & Curation** | - Data exported from REDCap to **Stata**.<br>- Cleaning: harmonise variable formats, standardise missing codes, remove duplicates.<br>- Link hospitalisations to death records to determine in-hospital, 28-day, and 1-year outcomes.<br>- Apply eligibility filters (e.g., FES, community-only, DCO). |
| **Analysis** | - **Key indicators:** incidence and mortality per 100,000; in-hospital and 28-day case fatality.<br>- **Sub-analyses:** by sex, age, and stroke subtype.<br>- **Performance indicators:** STEMI reperfusion, door-to-needle time, CT utilisation, discharge therapies. |
| **Reporting & Dissemination** | - **Quarterly reports:** notifications, abstraction progress, preliminary hospital data.<br>- **Annual report:** national incidence, mortality, case fatality, and trend analysis.<br>- Dissemination via Ministry of Health, Technical and Professional Advisory Boards, and CME events. |
| **Impact Examples** | Data used to guide **Stroke Unit establishment**, **thrombolytic protocol**, and **acute cardiac care improvements**. |
| **Reference** | BNR Annual Report 2021; Process Workshop 2019; CaribData ToR 2024 (analytics continuation). |

---

## References and Source Basis

- **Rose et al. (2016)** – *Predicting the burden of acute myocardial infarction in a country with limited resources.* *International Health, 8(1):53–58.*  
- **BNR Quarterly Reports (2014)** – Document early notification, abstraction, and cleaning stages before full digitisation.  
- **BNR Annual Report (2021)** – Defines current REDCap-linked workflow, indicators, and analysis methods.  
- **Process Change Workshop Report (2019)** – Details staffing roles, training, QC approaches, and movement toward paperless workflows.  
- **CaribData Terms of Reference (2024)** – Confirms ongoing use of Stata-based analytics and dataset sign-off protocols for cardiovascular data.

<br>


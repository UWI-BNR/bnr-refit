# Barbados CVD Dataset

The *Barbados Cardiovascular Disease (CVD) Dataset* brings together more than a decade of information on heart attacks and strokes in Barbados.  It is managed by the *Barbados National Registry for Chronic Non-Communicable Disease (BNR)* and provides the most complete picture to date of how cardiovascular disease affects the Barbados population. This dataset allows Barbados to track progress, identify trends, and make decisions based on evidence.

---

## Why this dataset matters

Cardiovascular disease has been the leading cause of death in Barbados for over 20 years.  
The BNR was created so that the country could *monitor these diseases carefully* — counting how many people are affected and simple measures of care effectiveness. 

The dataset exists to:

- bring together all confirmed hospital and death records for heart attack and stroke in one place;  
- provide reliable, up-to-date information for health planning and policy;  
- support research and reporting through a single national evidence base; and  
- make future analyses easier, faster, and more transparent.

---

## What’s included

Each record in the Barbados CVD dataset represents a *confirmed heart attack or stroke* that meets international medical definitions.  

Data come from two national sources:

1. **Hospital admissions** at the Queen Elizabeth Hospital (QEH) — Barbados’s only tertiary care hospital.  
2. **Death certificates** issued through the national vital registration system.  

Every record represents a clearly diagnosed and verified event.

---

## How the dataset is organised

Each version of the dataset is labelled so it’s easy to tell what it covers.  
The name includes:

- the type of data (e.g., full, summary),  
- the level of privacy protection (e.g., de-identified or anonymised),  
- the final month of data it includes, and  
- a version number.

For example:

```
BNR-CVD-FULL-DEID-202312-v1.0.dta
```

means this is the *full, de-identified* dataset covering confirmed cases up to *December 2023*, version *1.0*.

Three versions are produced for different uses:

| Version | Description | Access |
|----------|--------------|---------|
| **FULL** | All data fields, used internally for quality control and analysis. | Registry use only |
| **DEID** | De-identified version used for Ministry and academic analysis. | Limited circulation |
| **ANON** | Anonymised summaries suitable for public release. | Open access |

---

## The first release

The first full release of the dataset — **BNR-CVD-FULL-DEID-202312-v1.0** — covers all confirmed cases between *January 2009 and December 2023*.  

This marks the first time Barbados has had a complete, standardised, and validated record of cardiovascular disease across such a long period. It also underpins the *2023 BNR Annual Report*, which summarises national trends in heart attacks and strokes.

---

## What happens next

From *2024 onwards*, the CVD dataset will shift from an annual update to a *monthly release cycle*. This means:

- new, confirmed hospital and death records will be added each month;  
- every new version will show exactly which period of data is covered; and  
- users won’t need to wait until year-end to see updated trends.

Small updates will increase the *minor version number* (e.g., from v1.0 to v1.1), while larger changes — such as new data fields or methods — will start a new major version (e.g., v2.0).

This rolling update model will make the dataset more responsive and help identify changes in disease patterns more quickly.

---

## Related pages

- [Metadata Standards](metadata.md): How the datasets are named, versioned, and documented.  
- [Data Dictionary](structure.md): Variable names, definitions, and coding.  
- [Data Forensics](forensics.md): How historical data were cleaned and verified.  

These pages contain the technical details for analysts, data users, and developers.

---

## Timeline

| Period | Activity | Output |
|--------|-----------|---------|
| Nov–Dec 2025 | Finalise validation and documentation for 2009–2023 data | `BNR-CVD-FULL-DEID-202312-v1.0` |
| Jan 2026 onward | Begin monthly updates | `BNR-CVD-FULL-DEID-202401-v1.1`, etc. |
| Mid-2026 | Release anonymised public summary dataset | `BNR-CVD-SUMMARY-ANON-202606-v1.0` |

---

## Governance and data stewardship

The Barbados CVD dataset is managed by the *George Alleyne Chronic Disease Research Centre (GA-CDRC), The University of the West Indies*, in partnership with the *Ministry of Health and Wellness, Barbados*. All data remain the property of The UWI and the Government of Barbados. They are stored securely, used responsibly, and managed under the island’s data protection and ethical research guidelines.

<br/>

# Analytic Changes

**Notes:**  

1. These analytic changes modernise how the BNR turns clean data into meaningful results, moving from manual reporting to a semi-automated, standardised system.  
2. Together, they reduce analysis time, improve reproducibility, and ensure consistency across monthly, annual, and administrative outputs.

**Key:**  ❌ Not started 🟨 Underway ✅ Completed

| CHANGE MADE | RATIONALE | HOW WILL WE HELP | RESOURCE |
|--------------|------------|------------------| ------------|
| **New Analytics Plan** | ➤ To create a clear statistical analysis plan using the BNR data, covering annual, monthly, and ad-hoc reporting. | 🗹 Lead |🟨<br>[See statistical analysis plan](../../03_Reporting/sap.md)|
| **New Stata code for analytics behind annual report** | ➤ To rebuild the annual analytic pipeline in Stata using standardised datasets and reusable code blocks. | 🗹 Lead |❌<br>[See Stata algorithms](../../04_Technical/stata.md)|
| <div align="right">**(Annual ADO)<br>Incidence)**</div> | ➤ Incidence metrics. | 🗹 Lead |❌|
| <div align="right">**(Annual ADO)<br>Mortality)**</div> | ➤ Mortality metrics. | 🗹 Lead |❌|
| <div align="right">**(Annual ADO)<br>KPIs)**</div> | ➤ Health system performance KPIs. | 🗹 Lead |❌|
| **New Stata code for analytics behind monthly report** | ➤ To automate the generation of monthly registry summaries to support rapid monitoring of case trends and data completeness.<br>➤ Allows near real-time feedback to staff and stakeholders. | 🗹 Lead |❌<br>[See Stata algorithms](../../04_Technical/stata.md)|
| <div align="right">**(Monthly ADO)<br>Numbers)**</div> | ➤ Monthly cases. | 🗹 Lead |❌|
| <div align="right">**(Monthly ADO)<br>Rates)**</div> | ➤ Smoothed rolling rates. | 🗹 Lead |❌|
| <div align="right">**(Monthly ADO)<br>KPI 1)**</div> | ➤ Abstraction rate. | 🗹 Lead |❌|
| <div align="right">**(Monthly ADO)<br>KPI 2)**</div> | ➤ Locked case rate. | 🗹 Lead |❌|
| <div align="right">**(Monthly ADO)<br>KPI 3)**</div> | ➤ Caterpiller chart: cumulative cases vs. previous years. | 🗹 Lead |❌|
| <div align="right">**(Monthly ADO)<br>Data Check)**</div> | ➤ Major data flaws. Unusual values. Missingness. Obvious duplicates. other inconsistencies. | 🗹 Lead |❌|
| <div align="right">**(Monthly ADO)<br>Extract of locked records**</div> | ➤ Export only verified, quality-assured cases. | 🗹 Lead |❌|
| <div align="right">**(Monthly ADO)<br>Append to cumulative database**</div> | ➤ Adding verified cases to cumulative datasets. | 🗹 Lead |❌|
| <div align="right">**(Monthly ADO)<br>Dataset versions for re-use**</div> | ➤ Create identifiable, deidentified, aggregated, as ```.dta```, ```.csv```, ```.json```. | 🗹 Lead |❌|
| **Ado file wrapper(s) for analytics code** | ➤ To make the new analytics easier to run through modular, version-controlled Stata ado files.<br>➤ Creates a standard, auditable command structure for analytics. | ⚙ Contribute |❌<br>[See Stata algorithms](../../04_Technical/stata.md)|
| **Stata package for partial automation of new analytics** | ➤ To package the new analytics system into installable commands that can be reused or adapted by others.<br>➤ Supports reproducibility and knowledge transfer. | ⚙ Contribute |❌<br>[See Stata downloads](../../06_Downloads/index.md)|
| **(Potentially) Stata menu system** | ➤ To provide a simple, graphical “no-code” interface for non-programmers to run analytics and reports safely.<br>➤ Expands usability across the wider BNR team. | ⚙ Contribute |❌<br>[See Stata menuing](../../04_Technical/menu.md)|
| **(Potentially) Stata windowing framework for ado files** | ➤ To explore integration of window-based interaction for selected Stata commands.<br>➤ Would modernise user experience while maintaining analytic rigour. | ⓘ Advise |❌<br>[See Stata dialog boxes](../../04_Technical/interface.md)|

<br>

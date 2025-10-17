# Data Handling Infrastructure

==Oct 15, 2025. For Review by Jacqui and Christina==

The Barbados National Registry for Chronic Non-Communicable Disease (BNR) was launched in 2008 as a national surveillance system for stroke, heart attack, and cancer.  
Its cardiovascular component (BNR–CVD) has evolved steadily through two major stages of development — moving from a manual, paper-based workflow to a secure, cloud-based data management environment. This summary outlines those key stages and their defining technologies and methods.

| **Phase** | **Period & Platforms** | **Core Features** |
|------------|----------------------|-------------------|
| **1. Establishment & Manual Operations** | **2008 – 2015**  <br>Paper forms → TeleForm scanning → Epi Info desktop databases | ➤ Launch of **BNR–Stroke (2008)** and **BNR–Heart (2009)** as national registries. <br>➤ Data abstracted manually from hospital records and death certificates. <br>➤ Paper forms scanned or keyed into Epi Info databases. <br>➤ Quality control and analysis performed in **Excel** and **Stata**, with heavy manual effort. <br>➤ Early national statistics produced on incidence, mortality, and case fatality. |
| **2. Digitisation & REDCap Transition** | **2016 – 2024**  <br>Epi Info → **REDCap (GA-CDRC Server)** + **Stata Analytics** | ➤ Migration to electronic data capture using REDCap, enabling direct entry via laptops or tablets.  <br>➤ REDCap-centred validation, logic checks, and audit trails improved data quality.  <br>➤ Secure, cloud-hosted storage with daily backups.  <br>➤ **Stata** environment for data cleaning, quality review, and automated report generation, without REDCap integration.  <br>➤ Reductions in cleaning time and abstraction backlog.  <br>➤ Established “as-is” workflow: notifications → verification → abstraction → REDCap entry → export to Stata (final data-handling, analysis, reporting). |

<br>

<style>
.red-text {
  color: red;
  background-color: yellow;
  font-weight: normal;
}
</style>

# Statistical Analysis Plan (SAP)
### Barbados National Registry (BNR) – CVD Dataset
**Prepared for the BNR-refit project | Draft version**

This section will present the formal statistical analysis plan (SAP) that underpins BNR reporting. It will document the core indicators, analysis methods, population denominators, age standardisation procedures, and reporting formats used for cardiovascular disease surveillance. The SAP will be version-controlled and form the basis for standardisation across reporting cycles and registry components.

---

## 1. Purpose
This Statistical Analysis Plan (SAP) outlines the analytical framework for heart attack and stroke data in the Barbados National Registry (BNR). The goal is to support accurate monitoring, interpretation, and reporting of cardiovascular disease (CVD) trends while enhancing data utility for clinical, public health, and policy applications.

<span class="red-text">This SAP is draft notes at this point. To be expanded.</span>

---

## 2. Data Sources
- **Abstracted medical notes** (clinical, diagnostic, treatment, outcomes) abstracted from:
  - **Hospital records** from the Queen Elizabeth Hospital (QEH)
  - **Community** cases 
- **Death registry** notifications

---

## 3. Core Analyses

### 3.1. Descriptive Statistics
- Case counts and incidence rates (crude and age-standardised)
- Demographics: age, sex, parish
- Risk factor prevalence: hypertension, diabetes, smoking, alcohol, prior MI/stroke, as available (grade for completeness quality)

### 3.2. Mortality & Case Fatality
- In-hospital and 28-day case fatality (counts and rates)
- Cause-specific mortality (MI vs stroke) (crude, age-standardised)
- Survival analysis (Kaplan-Meier) for 1-year outcomes

### 3.3. Rates over time
- Age-standardised incidence and mortality (2012–present)
- Joinpoint (or similar) regression for identifying shifts over time
- Segmented time-series for impact of COVID-19

### 3.4. Hospital Performance Metrics
- Door-to-needle time
- Time to ECG
- Use of thrombolytics and statins
- Gender equity in care provision

---

## 4. Stratified Analyses
- By broad age groups (e.g., <55, 55–64, 65–74, 75+)
- By sex
- By place of residence (parish, grade completeness quality)
- By year or quarter (seasonality, pandemic effects)

---

## 5. Suggested Extensions

### 5.1. Novel/Advanced Methods

- Time-to-event modelling (Cox regression) for survival by treatment modality
- Propensity score matching to evaluate effect of receiving guideline-based care
- Latent class analysis for patient subtyping

### 5.2. Advanced Visualisation Techniques
- Stream graphs for temporal changes in case composition
- Violin plots for age distribution by outcome
- Slope charts to compare care metrics by gender/year
- Risk pyramid visualising age-risk-adjusted incidence and mortality

### C. Predictive Modelling
- Logistic regression for in-hospital death
- Machine learning (e.g. random forest, XGBoost) to predict 28-day survival
- Feature importance heatmaps

---

## 6. Planned Outputs
- Monthly and annual dashboards
- Interactive online visualisations (Plotly/Dash or similar)
- Infographic briefs for policymakers
- Scientific publications

---

## 7. Data Handling Notes
- Age-standardisation using WHO World Standard Population
- Use of uncertainty intervals (bootstrapped CIs or Bayesian methods)
- Missing data flagged and (potentially) handled using multiple imputation or (more likely) sensitivity analysis

---

## 8. Ethics and Data Governance
- Data de-identified or anonymised following approved process
- All analyses approved by the BNR Technical Lead
- Outputs to be cleared by the BNR Professional Advisory Board before dissemination

---

## 9. Prepared by:
CaribData Statistical Team
Version: 2025 Draft 1
</br></br>
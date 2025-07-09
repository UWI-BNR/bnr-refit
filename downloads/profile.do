*────────────────────────────────────────────────────────────────────────────*
*  profile.do – run automatically at Stata startup
* Created by Ian Hambleton
* 09-July-2025
* As part of BNR CVD refit
* ────────────────────────────────────────────────────────────────────────────*

capture noisily adopath ++ "c:/bnr2025"
adopath

** Log session
log using `: display %tCCCYY-NN-DD-HH-MM-SS ///
Clock("`c(current_date)' `c(current_time)'","DMYhms")', ///
name(default_log_file)

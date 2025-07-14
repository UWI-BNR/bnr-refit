*! analysis.do - descriptive analysis and PDF report
use "dummydata.dta", clear

* Descriptive statistics
summarize age bp
matrix list r(mean) r(sd)

* Scatter plot
graph twoway scatter bp age, title("BP vs Age Demo")
graph export "output/bp_age.png", replace

* Generate PDF report
putpdf begin
putpdf paragraph, font("Arial",14) bold
putpdf text ("BNR Refit Example Analytics Report")

putpdf paragraph
putpdf text ("This report shows summary statistics and a scatter plot for a dummy dataset.")

putpdf paragraph
putpdf table tbl1 = etable(r())
putpdf paragraph
putpdf image "output/bp_age.png", width(400)

putpdf save "output/refitexample_report.pdf", replace

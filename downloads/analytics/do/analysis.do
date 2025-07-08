use ../data/dummy.dta, clear

* Create summary stats and scatterplot
summarize age bp
graph twoway scatter bp age, title("Blood Pressure by Age")
graph export ../output/bp_age_scatter.png, replace

* Create PDF report
putpdf begin
putpdf paragraph, font("Arial", 14) bold
putpdf text ("BNR Refit Analytics Report")

putpdf paragraph
putpdf text ("This report summarizes the relationship between age and blood pressure in our dummy dataset.")

putpdf paragraph
putpdf image ../output/bp_age_scatter.png, width(400)

putpdf save ../output/analytics_report.pdf, replace

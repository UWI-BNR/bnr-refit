*! refitexample_summary.ado - wrapper for BNR refit example
program define refitexample_summary, rclass
    version 16.0

    * generate dummy data
    do "do/dummydata.do"

    * run analysis
    do "do/analysis.do"
end

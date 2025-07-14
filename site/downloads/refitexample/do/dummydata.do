*! dummydata.do - generate dummy dataset
clear
input id age byte sex bp
1 34 1 120
2 45 0 140
3 29 1 130
4 52 0 150
5 40 1 135
end
save "dummydata.dta", replace

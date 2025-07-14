*! menu.do - add Refit Example to menu
cap program drop refitexample_menu
program define refitexample_menu
    version 16.0
    window menu append item "BNR Refit Example" "Run Refit Example" "dialog main"
end
refitexample_menu

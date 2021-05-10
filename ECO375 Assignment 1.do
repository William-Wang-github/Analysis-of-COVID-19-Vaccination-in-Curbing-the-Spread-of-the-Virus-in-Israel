log close _all 														// closes any previously opened log file	

cd "C:\Users\hatho\Desktop\University Stuff\Economics\ECO375\Assignment 1\

local surname WANG

local firstname William

cap log close
log using "ECO375_`surname'_`firstname'_Assignment_1.log", replace text
set more off

clear

display "ECO375_Assignment_1" _n "`surname' `firstname' `studentnumber'" _n c(current_date) c(current_time)

use "Assignment01_Data.dta", clear

datasignature

describe	

sum cases_rate, detail 
sum cases_log, detail
sum

reg cases_log lagvacc_per, robust

test lagvacc_per == 0

twoway scatter cases_log lagvacc_per || lfit cases_log lagvacc_per

reg cases_log lagvacc_per i.week i.age, robust

reg cases_log lagvacc_per lagvacc_per2 i.week i.age, robust

reg cases_log lagvacc_0_10 lagvacc_10_20 lagvacc_20_100 i.week i.age, robust
** DO-FILE SECTION 00
** DO-FILE SET UP COMMANDS
version 13
clear all
macro drop _all
set linesize 80
set more 1

**  GENERAL DO-FILE COMMENTS
//  program:      	hotn_pyramid.do
//  project:      	HotN. Data Management
//  author:       	HAMBLETON / 05-JUNE-2014

** ------------------------------------------------------------------------------------
** 001. POPULATION PYRAMID SHOWING THE ALTERNATIVE BARBADOS POPULATIONS WE COULD USE 
** ------------------------------------------------------------------------------------
graph use "pyramid1"

{smcl}
{* *! version 1.0.0  20jun2014}{...}
{vieweralsosee "[SVY] svy" "mansection SVY svy"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation"}{...}
{vieweralsosee "[SVY] svyset" "help svyset"}
{vieweralsosee "" "--"}{...}
{* Help file on specific of HotN survey system}{...}
{vieweralsosee "help hotn design" "help hotn_design"}{...}
{vieweralsosee "help hotn weights" "help hotn_weights"}{...}
{vieweralsosee "help hotn fact sheet" "help hotn_fact_sheet"}{...}
{viewerjumpto "HotN Release 4" "hotn_dataset_release_notes##release04"}{...}
{viewerjumpto "HotN Release 3" "hotn_dataset_release_notes##release03"}{...}
{viewerjumpto "HotN Release 2" "hotn_dataset_release_notes##release02"}{...}
{viewerjumpto "HotN Release 1" "hotn_dataset_release_notes##release01"}{...}
{viewerjumpto "Credits" "hotn_dataset_release_notes##credits"}{...}
{title:Title}

{pstd}
{bf:HEALTH OF THE NATION 2012} {hline 2} DATASET RELEASE NOTES

{p 8 10}
{ul on}VERSION 4 (20-June-2014){ul off} Changes and additions to version 4

{p 8 10}
LIMTED VERSION DATASET. This is a limited version dataset. The following processes have been followed 
to create this limited (de-identified) dataset. 

{p 12 14}
    --> Identifiable information has been removed

{p 12 14}
    --> Eact age has been converted to 5-year bands

{p 12 14}
    --> Unique ID and Enumeration District have been randomly altered

{p 12 14}
A full dataset is available on request for approved research projects. 

{p 8 10}
1 {ul on}SEX{ul off} The -sex- variable has been recoded so that 1=female and 2=male.
This brings the HotN coding in line with most external datasets. The idea is to reduce 
the possibility of merge errors if linking with external data sources.

{p 8 10}
2 {ul on}WEIGHTING{ul off} Several changes have been made to the weight variables in version 4. 
Each is described in a little more detail below:

{p 12 15}
2A {ul on}Base-weights{ul off} Base weights are the reciprocal of probabilty of participant 
selection from household. 
This equals the number of eligible individuals in the household (variable -nih-). 

{p 12 15}
2B {ul on}Adjusting for non-response 1{ul off} In version 3 of the dataset, households of unknown eligibility 
were included in the household denominator of non-response. This had the effect of increasing the denominator 
and decreasing the reported non-response. This has been corrected. The calculation of non-response now uses 
eligible households only, dividing responding households by all eligible households. An adjustment for households 
of unknown eligibility is performed separately. 

{p 12 15}
2C {ul on}Adjusting for non-response 2{ul off} In version 3 of the dataset, non-response was based on 
unweighted ED-level response proportions. In version 4 this has been altered to be {ul on}weighted{ul off} 
ED-level response proportions (response rates multiplied by the base weight).  

{p 12 15}
2D {ul on}Post-stratification weights{ul off}  In version 3 of the dataset, post-stratification was performed 
separately for women and men. This weighting solution corrected unbalanced age distributions within each sex,
but did not correct for the over-representation of women / underrepresentation of men. This has been corrected, 
and the post-stratification weight now applies an adjustment for the complete age-sex bivariate distribution.

{p 12 15}
2E {ul on}Normalized weights{ul off}  The normalized weights are simply rescaled to sum to N=1,234 - the exact 
number of participants in the HotN survey. Normalized weights are NOT an alternative to modelling the survey 
design (eg. using svy: in Stata). Original (non-normalized) weights carry the prefix "o_" and are available 
on request.

{p 8 10}
3 {ul on}HotN dataset HELP system{ul off} HOTN Help system (in Stata) created to accompany dataset release. See below.

{p 8 10}
4 {ul on}HotN package released (.pkg){ul off} Dataset release 4 comes as a Stata package, and includes the following:

{p 10 14}
(A) Main dataset

{p 10 14}
(B) Dataset of external population distributions

{p 10 14}
(C) HOTN Help system, including information on study design, study weights, summary results (fact sheet), 
and dataset release notes

{p 4 4}
{ul on}VERSION 3 (15-May-2014){ul off} Changes and additions to version 3

{p 8 10}
1 The OpenClinica (v3.1) data export problems experienced for the {ul on}EQ-5D variables{ul off} (when exporting 
to various flatfile flavours) have been fixed by exporting first to the CDISC XML data exchange format, then 
converting from XML to a series of spreadsheet flatfiles. The XML to CSV conversion was accomplished using an 
XML to CSV open source conversion algorithm (written in C+) available at http://xmltocsv.codeplex.com/ (tool 
version 1.6). This tool version was released on 24-Feb-2014, and downloaded for use on 14-May-2014.

{p 8 10}
2 {ul on}Date of Interview{ul off} change (var=doi) for single participant. Date changed from 7-Jul-2013 
to 7-Jul-2012 for participant 2019. This error would affect any calculations of time from main study 
to substudy.

{p 8 10}
3 {ul on}The "system missing" codes{ul off} included in the dataset are as follows:

{p 12 14}
   --> Don't know      = .b

{p 12 14}
   --> Refused         = .c

{p 12 14}
   --> Not Applicable  = .z

{p 8 10}
These codes are consistently applied throughout the dataset. Dataset release v3 adds full labelling to 
these system values, so that during tabulations, Stata produces an English language meaning for the missing 
code, rather than the missing code itself.


   
{p 4 4}
{ul on}VERSION 2 (08-May-2014){ul off} Changes and additions to version 2

{p 8 10}
1 Although it is the first analysis release of the dataset it is the second circulated version, and so is 
called dataset version 2. Each subsequent update version will now increase by 1.

{p 8 10}
2 {ul on}EQ-5D{ul off} This version does not contain the EQ-5D, which currently has data export errors. 
I am looking to have EQ-5D for dataset release 3 or 4. The process for EQ-5D extraction is (A) to test 
EQ-5D data extraction on a new OpenClinica installation, then (B) convert the XML data export (which 
has no errors) to an analysis flatfile. 

{p 8 10}
3 {ul on}Stata Metadata{ul off} This dataset contains metadata for the dataset in general "notes _dta" 
and for each dataset variable "notes <varname>". Use the Stata "notes" command to access this metadata. 
Type "help notes" at the Stata command line to find out more about the notes command. 

{p 8 10}
4 {ul on}Using Metadata{ul off} The metadata can always be better, and will become better over time as 
we use this facility. Please feedback any metadata errors to Ian Hambleton (ian.hambleton@cavehill.uwi.edu). 
Also email suggestions for additional metadata that could be added to the dataset.

{p 8 10}
5 {ul on}Reporting Data Errors{ul off} This early dataset release is likely to still contain data errors. 
Please report any data errors to Ian Hambleton (ian.hambleton@cavehill.uwi.edu). Corections will be 
reflected in all subsequent dataset releases.

{p 8 10}
6 The dataset includea all data corrections identified since the release of HOTN dataset pre-release 
(version 1). All corrections have been made and are recorded in the Stata algorithm (corrections_001.do). 
This data correction algorithm is available from Ian Hambleton, and will be stored with the study archive 
files.

{p 8 10}
7 The dataset now includes analysis weights. For a full description of the derived analysis weights, see 
the accompanying methods document prepared by Ian Hambleton (20140425_hotn_analysis_weights.pdf).



{p 4 4}
{ul on}VERSION 1 (28-Feb-2014){ul off} Pre-analysis release

{p 8 10}
Initial pre-release sent to core research team only (Nigel Unwin, Angela Rose, Christina Howitt). This 
release was circulated to allow systematic error detection by team, did not contain the HOTN analysis 
weights, and was not to be used for analysis.




{marker credits}{...}
{p 4 4}
{ul on} HELP FILE AUTHOR{ul off}

{pstd}Ian Hambleton{p_end}
{pstd}Chronic Disease Research Centre{p_end}
{pstd}Tropical Medicine Research Institute{p_end}
{pstd}The University of the West Indies{p_end}
{pstd}Bridgetown, BARBADOS{p_end}
{pstd}ian.hambleton@cavehill.uwi.edu{p_end}


{p 4 4}
{ul on} HOTN RESEARCH TEAM{ul off}

{pstd}The HotN research team includes:

	{txt}
    {c TLC}{hline 25}{c -}{c TT}{hline 39}{c -}{c TRC}
    {c |} {res} Angela Rose             {c |}  PI. Epidemiologist{txt}                    {c |}
    {c |} {res} Nigel Unwin             {c |}  PI. Epidemiologist{txt}                    {c |}
    {c |} {res} Chrstina Howitt         {c |}  Project Manager{txt}                       {c |}
    {c |} {res} Ian Hambleton           {c |}  Statistician{txt}                          {c |}
    {c |} {res} Kenneth George          {c |}  Barbados MoH. Senior Medical Officer{txt}  {c |}
    {c |} {res} Anselm Hennis           {c |}  Epidemiologist{txt}                        {c |}
    {c |} {res} Alafia Samuels          {c |}  Epidemiologist{txt}                        {c |}
    {c BLC}{hline 25}{c -}{c BT}{hline 39}{c -}{c BRC}
 
 
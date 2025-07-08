{smcl}
{* *! version 1.0.0  20jun2014}{...}
{vieweralsosee "[SVY] svy" "mansection SVY svy"}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[SVY] svy estimation" "help svy_estimation"}{...}
{vieweralsosee "[SVY] svyset" "help svyset"}
{vieweralsosee "" "--"}{...}
{* Help file on specific of HotN weighting system}{...}
{vieweralsosee "help hotn design" "help hotn_design"}{...}
{vieweralsosee "help hotn fact sheet" "help hotn_fact_sheet"}{...}
{vieweralsosee "help hotn dataset release notes" "help hotn_dataset_release_notes"}{...}
{viewerjumpto "General intro to weights" "hotn_weights##intro"}{...}
{viewerjumpto "Principles guiding HOTN survey weights" "hotn_weights##principles"}{...}
{viewerjumpto "Weights for HotN" "hotn_weights##hotnw"}{...}
{viewerjumpto "HotN base weights" "hotn_weights##basew"}{...}
{viewerjumpto "HotN non-response weights" "hotn_weights##nrw"}{...}
{viewerjumpto "HotN weights for unknown eligibility" "hotn_weights##ue"}{...}
{viewerjumpto "HotN post-stratification weights" "hotn_weights##psw"}{...}
{viewerjumpto "HotN weighting effect" "hotn_weights##we"}{...}
{viewerjumpto "Which HotN weight to use?" "hotn_weights##which"}{...}
{viewerjumpto "Credits?" "hotn_weights##credits"}{...}
{title:Title}

{pstd}
{bf:HEALTH OF THE NATION 2012} {hline 2} SURVEY WEIGHTS

{marker intro}{...}
{title:A General Discussion on Survey Weighting}

{pstd}
{ul on}Survey Weighting {ul off}
In most surveys it will be the case that some participant groups are 
over-represented in the 
raw data and others under-represented. These mis representations are usually 
dealt with by weighting the data. 

{p 4 8}
The idea behind weighting is that: 

{p 8 10}
. Members of sub-groups that are thought to be over- or under-represented in 
the survey data are each given a weight 

{p 8 10}
. Over-represented groups are given a weight of less than one 

{p 8 10}
. Under-represented groups are given a weight of greater than one 

{p 8 10}
. In this survey, the weight is calculated in such a way that the weighted frequency of 
the groups matches that of the total sample (N=1,234). A weight that sums to the total 
survey sample size is called 'normalized'. 

{p 8 10}
. All survey estimates are calculated using these weights, so that averages 
become weighted averages, and percentages become weighted percentages, 
and so on. 

{marker principles}{...}
{title:Principles guiding the Health of the Nation survey weights}

{p 4 4}
Weights for disproportionate sampling are relatively non-controversial, but 
weights to adjust for non-response biases are largely dependent upon judgement. 
The HotN survey team has adopted the following principles for weighting 
survey data. These are: 

{p 8 10}
. The Enumeration District (the Primary Sampling Unit or PSU of the survey) 
has been selected using 
probability proportional to size (PPS) by the Barbados Statistical Service. 
This means that the probability of 
selecting each chosen household in the sample is the same for all EDs. 

{p 8 10}
. Non-equal probabilities of selection (caused by choosing 1 participant per household) 
are dealt with by applying weights proportional to the inverse of the 
probability of selection 

{p 8 10}
. Non-response is calculated by ED. It is adjusted for by calculating the proportion 
of known eligible participants that refused to take part. This participant or 'unit' non-response
is not the same as item non-response, where a participating individual may choose not to 
provide information for selected survey questions.

{p 8 10}
. For a number of households, eligibility remained unknown (for example, the house 
was known to be occupied but the occupants could not be contacted). The percentage 
eligibility among these households was assumed to be the same as for households of 
known eligibility. This allowed an 'unknown elibility' adjustment to be applied to 
all weights. 

{p 8 10}
. After selection and non-reponse adjustments have been made a final 'post-stratification'
adjustment is applied. This final adjustment standardizes the age/sex distribution in the HotN sample
to the known Barbados population. Several alternative external sources have been used 
for estimates of the Barbados age/sex distribution.


{marker hotnw}{...}
{title:Health of the Nation National Survey Weights: Details}

{p 4 4}
Sampling weights in the HotN survey account for sample design features (such as 
selection of participants with unequal probabilities) and attempt to account for 
imperfections in the HotN sample (such as participant non-response) that might 
lead systematic departures of the HotN sample estimates from true population values. 
In other words, the purposes of weighting are: 

{p 8 10}
. To compensate for unequal probabilities of selection. 

{p 8 10}
. To compensate for (unit) non-response. 

{p 8 10}
. To adjust the weighted sample distribution for key variables of interest 
(in the case of HotN, age and sex) to force it to conform to a known population distribution. 

{marker basew}{...}
{p 4 4}
{ul on}Base-weight{ul off} A base-weight for each sampled unit corrects for 
unequal probabilities of selection.  The base-weight of each sampled unit is 
the reciprocal of its probability of selection into the sample. If a unit is 
included in the survey sample with probability P_i, then its base weight, 
denoted by w_i, is given by,

{center: p(ij) = p(i) * p(j)} 

{center: w(ij) = 1 / p(ij)} 

{p 4 4}
In the HOTN survey, EDs were selected with probability proportional to size, 
and households selected at an appropriate rate within EDs, such that every 
selected household had an equal probability of being selected. This means 
that ED and household base-weights are all the same, and the sample is 
referred to as self-weighting. However, the survey then chooses one 
participant per household, which nullifies the self-weighting design. 
So, the base-weight consists of a single adjustment to account for a 
'participant weight' due to a single participant selected randomly (using Kish
Tables) from several eligible participants in the household.

{marker nrw}{...}
{p 4 4}
{ul on}Nonresponse weights{ul off} It is rarely the case that all desired 
information is obtained from all participants in a survey. It is important 
to keep survey nonresponse as low as possible, in order to reduce the 
possibility that the survey estimates could be biased in some way by 
failing to include (or including a disproportionately small percentage of) 
a particular portion of the population. The procedure of adjusting sample 
weights for nonresponse is the preferred practice for coping with unit nonresponse 
in major household surveys throughout the world. Essentially, the adjustment 
transfers the base-weights of all eligible non-responding sampled units to 
the responding units, and is implemented in the HOTN survey using the 
following steps: 

{p 8 16}
{hilite: Step 1:} Apply the initial base-weights 

{p 8 16}
{hilite: Step 2:} Partition the sample into 45 ED subgroups and compute 
weighted response rates for each ED; 

{p 8 16}
{hilite: Step 3:} Use the reciprocal of the subgroup response rates for 
non-response adjustments; and 

{p 8 16}
{hilite: Step 4:} Calculate the non-response adjusted weight for the i-th unit as: 

{center: w(i) = w1i * w2i} 

{p 4 4}
where w(1i) is the base-weight and w(2i) is the nonresponse adjustment weight. 

{marker ue}{...}
{p 4 4}
{ul on}Adjusting sample weights for unknown eligibility{ul off} During the 
HOTN survey, the eligibility of some households has been in question. 
In such cases, it is not known whether the dwelling unit is occupied or not. 
If it is actually occupied, then it should be classified as a non-responding 
dwelling unit. Otherwise, it is ineligible to be counted as a sample unit. 
Sometimes, survey teams assume that if no one is found in a dwelling unit 
during repeated visits, then that dwelling unit is unoccupied and hence 
ineligible. This is, in general, an incorrect assumption; one that often 
leads to erroneously inflated response rates. In the HotN survey we have 
been careful not to make this assumption, and have instead employed the 
following weight adjustment to account for households of unknown eligibility.

{p 4 4}
When the eligibility of some sampled dwelling units is unknown, their 
weights have been adjusted to account for this fact. The idea is to make 
some assumptions that permit the estimation of the proportion of dwelling 
units with unknown eligibility that are actually eligible. We have used a 
simple approach, taking the proportion of sampled dwelling units known to 
be either eligible or ineligible, and applying that proportion to those 
of unknown eligibility. In the HotN survey, there are 2,076 households 
with the following response dispositions:

{p 4 4}
{ul on}HotN households approached and response disposition{ul off}

	{txt}
	     {c TLC}{hline 8}{c -}{hline 20}{c -}{hline 15}{c TRC}
	     {c |} {res}    Response                 # households   {txt}{c |}
	     {c LT}{hline 8}{c -}{hline 20}{c -}{hline 15}{c RT}
	  1. {c |} {res}    Complete interviews             1,234   {txt}{c |}
	  2. {c |} {res}    Eligible non-respondents          358   {txt}{c |}
	  3. {c |} {res}    Ineligibles                        83   {txt}{c |}
	  4. {c |} {res}    Unknown eligibility      	      401   {txt}{c |}
	  5. {c |} {res}    TOTAL                           2,076   {txt}{c |}
	     {c BLC}{hline 8}{c -}{hline 20}{c -}{hline 15}{c BRC}
		 
{p 4 4}
The proportion of dwelling units of known eligibility that are actually 
eligible is (1234+358)/(1234+358+83) = 0.9504. We can therefore assume 
that the same proportion (0.95) of the dwelling units with unknown 
eligibility can be considered eligible. In other words, 95% of the 
401 dwelling units with unknown eligibility (or 381 dwelling units) 
are actually eligible. We then adjust the weights of the eligible 
dwelling units (completed interviews and eligible nonrespondents) 
using an adjustment factor defined as follows:	 

{center: F(ue) = sum(c)w(b) + sum(nr)w(b) + E*sum(ue)w(b)  / sum(c)w(b) + sum(nr)w(b)}

{p 4 4}
where E denotes the proportion of the unknown eligibility cases that 
are estimated to be eligible (E =0.95 for HotN). The summations over 
c, nr, and ue in the above formula denote, respectively, the sum of 
the base weights of dwellings with complete interviews, with eligible 
non-respondents, and of unknown eligibility. The adjusted base weights 
of dwellings with complete interviews and eligible non-respondents are 
then obtained by multiplying their initial base weights w(b) by the 
factor F(ue).

{marker psw}{...}
{p 4 4}
{ul on}Non-coverage weights (also known as post-stratification weights){ul off} 
Non-coverage refers to the failure of the sampling frame to cover all of the 
target population, leaving some sampling units with a reduced probability of 
selection into the sample selected for the survey. This is just one of 
many possible deficiencies of sampling frames used to select samples
 for surveys in developing countries. The HOTN uses a highly clustered 
 ED design (approximately 2,000 households approached from just 
 45 EDs) to achieve its sample, and although this brings cost savings, 
 the high clustering may lead to a non-representative sample. 

{p 4 4}
During a survey, there are field procedure considerations for 
minimizing non-coverage, but here we shall concentrate on post-hoc
compensation for non-coverage through a statistical adjustment of 
the weights. In Barbados, reliable control totals are available for 
the entire population and for specified subgroups of the population 
(using the Barbados census or alternatively using one of two 
important international population estimates, from the United Nations 
World Population Prospects and from the US Census Bureau International 
DataBase), so we can adjust the weights of the sample units in such a 
way as to make the sum of weights match the control totals within the 
specified subgroups. The subgroups are called post-strata, and the 
statistical adjustment procedure is called post-stratification. The 
post-stratification adjustment adjusts the weighted sampling distribution 
for certain variables so as to conform to a known population distribution. 

{p 4 4}
In a sense, this procedure simultaneously compensates for non-response and 
non-coverage. However, this adjsutment is only within age/sex subgroups, whereas the
non-response adjustment is within finer ED stratifications, may be prefereable, but
is certainly different. To allow independence of nonresponse compensation 
and non-coverage compensation we have calculated and applied an item 
non-response adjustment separately to the various post-stratification adjustments.

{marker psw}{...}
{p 4 4}
{ul on}Survey age and sex participant distribution versus Barbados population 
distributions{ul off} The population pyramid figure generated below highlights 
the non-coverage (by age and sex) of the HotN survey sample compared to the 
various Barbados population estimates. It highlights the importance of 
accounting for under-representation of the young and over-representation 
of the elderly using post-stratification weighting by age and sex.

{p 4 4}
{it:({stata do hotn_pyramid:Click here to display unweighted population pyramid})}

{p 4 4}
The population pyramid figure generated below shows the revised age/sex 
distribution of the HotN survey participants after post-stratification weights
have been applied. In this example, the sample has been re-weighted to follow 
the age/sex distribution from the Barbados Census 2010.

{p 4 4}
{it:({stata do hotn_pyramid2:Click here to display weighted population pyramid})}

{marker we}{...}
{p 4 4}
{ul on}Effect of HotN survey weights{ul off} The effect of applying HotN 
weights is presented below for diabetes prevalence 
Sample estimates are presented in the Table below 
for six weighting variations not adjusted then adjusted for dwellings 
of unknown eligibility, producing 12 weight variations in total 
(as well as the unweighted estimates).

{p 4 4}
The weights in row 10 [Base + NR + PS (Census 2010)] 
and adjusted for unknown eligibility is the weighting scheme used in 
HotN Fact Sheet estimates.

{p 4 4}
{it:({stata help hotn_fact_sheet:Open the HotN Fact Sheet estimates})} 

{p 4 4}
Using this weighting scheme, 
the prevalence of diabetes was reduced from 
26.81% to 21.46% among men (a reduction of 5.35 percentage points) and 
from 30.89% to 30.71% among women (a reduction of 0.18 percentage points). 
Overall, the prevalence of diabetes was reduced from 29.34% to 26.41% 
(a reduction of 2.93 percentage points)

{p 4 4}
Generally, the influence of weighting on different estimates will vary, 
leading to increases as well as decreases compared to unweighted estimes. 


{p 4 4}
{ul on}HotN weights sensitivity analysis{ul off}

	{txt}
 {c TLC}{hline 50}{c -}{hline 10}{c -}{hline 9}{c TRC}
 {c |} {res}                                   Diabetes Prevalence                {txt}{c |}
 {c |} {res}                                   Men         Women         ALL      {txt}{c |}
 {c |} {res}                                                                      {txt}{c |}
 {c LT}{hline 40}{c -}{hline 20}{c -}{hline 9}{c RT}
 {c |} {res}  Unweighted                       26.81       30.89         29.34    {txt}{c |}
 {c LT}{hline 40}{c -}{hline 20}{c -}{hline 9}{c RT}
 {c |} {res}  NO ADJUSTMENT                                                       {txt}{c |}
 {c |} {res}  FOR UNKNOWN                                                         {txt}{c |}
 {c |} {res}  ELIGIBILITY                                                         {txt}{c |}
 {c |} {res}                                                                      {txt}{c |}
 {c |} {res}  Base weight                      26.33       32.32         30.02    {txt}{c |}
 {c |} {res}  Base + NR                        26.45       32.16         29.99    {txt}{c |}
 {c |} {res}  Base + NR + PS (Census 2010)     21.60       30.72         26.48    {txt}{c |}
 {c |} {res}  Base + NR + PS (Census 2000)     19.13       29.05         24.42    {txt}{c |}
 {c |} {res}  Base + NR + PS (US IDB)          18.97       28.76         24.10    {txt}{c |}
 {c |} {res}  Base + NR + PS (UN WPP)          19.89       29.60         24.85    {txt}{c |}
 {c LT}{hline 40}{c -}{hline 20}{c -}{hline 9}{c RT}
 {c |} {res}  ADJUSTED                                                            {txt}{c |}
 {c |} {res}  FOR UNKNOWN                                                         {txt}{c |}
 {c |} {res}  ELIGIBILITY                                                         {txt}{c |}
 {c |} {res}                                                                      {txt}{c |}
 {c |} {res}  Base weight                      26.01       32.11         29.80    {txt}{c |}
 {c |} {res}  Base + NR                        26.13       31.92         29.74    {txt}{c |}
 {c |} {res}  Base + NR + PS (Census 2010)     21.46       30.71         26.41    {txt}{c |}
 {c |} {res}  Base + NR + PS (Census 2000)     18.98       29.02         24.33    {txt}{c |}
 {c |} {res}  Base + NR + PS (US IDB)          18.81       28.73         24.02    {txt}{c |}
 {c |} {res}  Base + NR + PS (UN WPP)          19.74       29.57         24.77    {txt}{c |}
 {c BLC}{hline 50}{c -}{hline 10}{c -}{hline 9}{c BRC}

{p 4 4}
Note: HbA1C >=6.5% OR Fasting plasma >= 7.0 mmol/l OR self-reported diabetes by participant		


{marker which}{...}

{p 4 4}
{ul on}Which HotN weights to use?{ul off} 
Several alternative weight variables have been created, and the choice will affect the prevalence
estimates you obtain. Below is a brief guide to the available HotN weights. 

{p 4 4}
It is the responsibility of the analysis to choose the weight(s) that are best for a given analysis.
If in doubt, please contact the HotN research team for advice (

{p 8 10}
{hilite: WBASE: Base-weight}
The inverse of the number of eligible people in household (variable -nih-).

{p 8 10}
{hilite: WRR: Non-response weight}
The inverse of the weighted proportion responding from all eligible participants, 
calculation by enumeration district. 

{p 8 10}
{hilite: WHOTN: Base and non-response weight combined}
Multiplying base and non-response weights gives us a single weight variable adjusting for 
participant selection probability and non-response together. Using this weighting does not
standardize the HotN sample to the age/sex distribution of an external population, and the 
remaining weight flavours apply a "post-stratification" weight to achieve this standardization.

{p 8 10}
{hilite: WPS_B2010: Standardize to Barbados Census 2010}
This weight standardizes to the age/sex distribution from the Barbados Census 2010 WITHOUT first 
applying base and non-response weights.

{p 8 10}
{hilite: WPS_B2000: Standardize to Barbados Census 2000}
This weight standardizes to the age/sex distribution from the Barbados Census 2000 WITHOUT first 
applying base and non-response weights.

{p 8 10}
{hilite: WPS_WPP: Standardize to UN WPP (2010)}
This weight standardizes to the Barbados 2010 age/sex distribution from the United National 
World Population Prospects (WPP, 2012 edition), WITHOUT first 
applying base and non-response weights.

{p 8 10}
{hilite: WPS_IDB: Standardize to US IDB (2010)}
This weight standardizes to the Barbados 2010 age/sex distribution from the US Census Bureau 
International DataBase (IDB), WITHOUT first applying base and non-response weights.

{p 8 10}
{hilite: WFINAL1: Base, Nonresponse, Post-stratification (Census 2010) combined}
Single weight accounting for base and non-response weights, and applying a 
post-stratification weight to standardize to the age/sex distribution of the Barbados Census 2010.

{p 8 10}
{hilite: WFINAL2: Base, Nonresponse, Post-stratification (Census 2000) combined}
Single weight accounting for base and non-response weights, and applying a 
post-stratification weight to standardize to the age/sex distribution of the Barbados Census 2000.

{p 8 10}
{hilite: WFINAL3: Base, Nonresponse, Post-stratification (UN WPP) combined}
Single weight accounting for base and non-response weights, and applying a 
post-stratification weight to standardize to the Barbados 2010 age/sex distribution 
using the UN WPP.

{p 8 10}
{hilite: WFINAL4: Base, Nonresponse, Post-stratification (UN WPP) combined}
Single weight accounting for base and non-response weights, and applying a 
post-stratification weight to standardize to the Barbados 2010 age/sex distribution 
using the US IDB.

{p 8 10}
{hilite: WUE: Unknown eligibility adjustment} 
Each weight variable has been adjusted for households of unknown eligibility. After this adjustment
has been applied, the weight variable carries the suffix {hilite: ad}. If this adjustment {ul on}has not{ul off} 
been applied, it carries the suffix {hilite: un}.


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
 
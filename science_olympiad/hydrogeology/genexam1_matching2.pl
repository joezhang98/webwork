##DESCRIPTION
#
#File created: 06/08/2016
#Problem author: Joe Zhang zhaoz@princeton.edu
#Location: DCDS
##ENDDESCRIPTION

DOCUMENT();        # This should be the first executable line in the problem.

loadMacros(
"PG.pl",
"PGbasicmacros.pl",
"PGchoicemacros.pl",
"PGanswermacros.pl",
);

TEXT(&beginproblem);
$showPartialCorrectAnswers = 0;

$tf = new_select_list();
$tf -> qa (
	"Capable of transmitting water (porous rock, sediment, or soil); the rate at which water moves through rocks or soil","A",
	"The ratio of the volume of void or air spaces in a rock or sediment to the total volume of the rock or sediment","B",
	"A measure of the capability of the entire thickness of an aquifer to transmit water","C",
	"The zone immediately below the land surface where the pores contain both water and air, but are not totally saturated with water","D",
	"Generally denoted by the letter i, it is the grade measured by the ratio of drop in elevation of a stream per unit horizontal distance","E",

);
$tf->{ans_rule_len} = 1;
$tf -> choose(5);

BEGIN_TEXT;
Match the following terms with their corresponding definitions.  Please input the capital letter next to the term in the answer space. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR
A - Permeability $BR
B - Porosity $BR
C - Transmissivity  $BR
D - Aeration zone $BR
E - Gradient $BR
$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.
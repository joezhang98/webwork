##DESCRIPTION
#
#File created: 06/08/2016
#File last modified: 06/08/2016
#Problem author: Joe Zhang zhaoz@princeton.edu
#Location: DCDS
#
##ENDDESCRIPTION


DOCUMENT();        # This should be the first executable line in the problem.

loadMacros(
"PG.pl",
"PGbasicmacros.pl",
"PGchoicemacros.pl",
"PGanswermacros.pl",
"PGauxiliaryFunctions.pl"
);

TEXT(&beginproblem);
$showPartialCorrectAnswers = 1;

TEXT(EV2(<<EOT));
Order the following events in the water cycle, beginning with evaporation.  Enter "1" in the box next to evaporation and enter "7" for the last event. $BR

$BR
\{ans_rule(2)\} Evaporation $BR
\{ans_rule(2)\} Recharge $BR
\{ans_rule(2)\} Groundwater flow $BR
\{ans_rule(2)\} Precipitation $BR
\{ans_rule(2)\} Discharge $BR
\{ans_rule(2)\} Condensation $BR
\{ans_rule(2)\} Runoff $BR

EOT
$ans1 = 1;
$ans2 = 5;
$ans3 = 6;
$ans4 = 3;
$ans5 = 7;
$ans6 = 2;
$ans7 = 4;


&ANS( std_num_cmp ($ans1) );
&ANS( std_num_cmp ($ans2) );
&ANS( std_num_cmp ($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS( std_num_cmp ($ans5) );
&ANS( std_num_cmp ($ans6) );
&ANS( std_num_cmp ($ans7) );

ENDDOCUMENT();        # This should be the last executable line in the problem.
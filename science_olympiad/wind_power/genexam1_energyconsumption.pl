##DESCRIPTION
#
#File created: 06/09/2016
#File last modified: 06/09/2016
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
Order the following sources of U.S. electricity generation (2014) from most used to least used.  Enter 1 for most used and 5 for least used. $BR

$BR
\{ans_rule(2)\} Natural gas $BR
\{ans_rule(2)\} Renewable $BR
\{ans_rule(2)\} Nuclear $BR
\{ans_rule(2)\} Petroleum $BR
\{ans_rule(2)\} Coal $BR

EOT
$ans1 = 2;
$ans2 = 4;
$ans3 = 3;
$ans4 = 5;
$ans5 = 1;

&ANS( std_num_cmp ($ans1) );
&ANS( std_num_cmp ($ans2) );
&ANS( std_num_cmp ($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS( std_num_cmp ($ans5) );

ENDDOCUMENT();        # This should be the last executable line in the problem.
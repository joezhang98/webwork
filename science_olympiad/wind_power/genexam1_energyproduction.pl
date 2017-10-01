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
Order the following sources of energy production in the U.S. in 2014 from most produced to least produced.  Enter 1 for the most produced and 5 for the least produced. $BR

$BR
\{ans_rule(2)\} Renewable energy $BR
\{ans_rule(2)\} Coal $BR
\{ans_rule(2)\} Natural gas $BR
\{ans_rule(2)\} Nuclear electric power $BR
\{ans_rule(2)\} Petroleum $BR

EOT
$ans1 = 4;
$ans2 = 3;
$ans3 = 1;
$ans4 = 5;
$ans5 = 2;

&ANS( std_num_cmp ($ans1) );
&ANS( std_num_cmp ($ans2) );
&ANS( std_num_cmp ($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS( std_num_cmp ($ans5) );

ENDDOCUMENT();        # This should be the last executable line in the problem.
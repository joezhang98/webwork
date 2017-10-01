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
Burn tests were performed on the following three fibers: nylon, cotton, and wool.  The following characteristics pertain to one of the three burn tests.  Enter 1 in the answer box if it pertains to a burn test of nylon, enter 2 for cotton, and enter 3 for wool. $BR
$BR

$BR
\{ans_rule(2)\} Self-extinguishing $BR
\{ans_rule(2)\} Burns briefly and melts $BR
\{ans_rule(2)\} Odor of burning grass $BR
\{ans_rule(2)\} Odor of burning paper $BR
\{ans_rule(2)\} Creates a hard, gray bead $BR

EOT
$ans1 = 2;
$ans2 = 2;
$ans3 = 3;
$ans4 = 1;
$ans5 = 2;

&ANS( std_num_cmp ($ans1) );
&ANS( std_num_cmp ($ans2) );
&ANS( std_num_cmp ($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS( std_num_cmp ($ans5) );

ENDDOCUMENT();        # This should be the last executable line in the problem.
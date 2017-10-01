##DESCRIPTION
#
#File created: 06/06/2016
#File last modified: 06/06/2016
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
Order the following events in the life cycle of a normal mass star.  Enter "1" for the phase that comes first and "7" for the phase that comes last. $BR

$BR
\{ans_rule(2)\} Asymptotic giant branch. $BR
\{ans_rule(2)\} Supernova. $BR
\{ans_rule(2)\} Red giant branch. $BR
\{ans_rule(2)\} Giant molecular cloud. $BR
\{ans_rule(2)\} Main branch. $BR
\{ans_rule(2)\} Horizontal branch. $BR
\{ans_rule(2)\} Protostar. $BR

EOT
$ans1 = 6;
$ans2 = 7;
$ans3 = 4;
$ans4 = 1;
$ans5 = 3;
$ans6 = 5;
$ans7 = 2;

&ANS( std_num_cmp ($ans1) );
&ANS( std_num_cmp ($ans2) );
&ANS( std_num_cmp ($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS( std_num_cmp ($ans5) );
&ANS( std_num_cmp ($ans6) );
&ANS( std_num_cmp ($ans7) );

ENDDOCUMENT();        # This should be the last executable line in the problem.
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
Each of the following characteristics pertains to one of the four blood types. Match the characteristic to the correct blood type by entering the number into the answer box. $BR
$BR
1 - A $BR
2 - B $BR
3 - O $BR
4 - AB $BR
$BR

$BR
\{ans_rule(2)\} The most common blood type $BR
\{ans_rule(2)\} The least common blood type $BR
\{ans_rule(2)\} Contains antigen A but not antigen B $BR
\{ans_rule(2)\} Contains both antigen A and antigen B $BR
\{ans_rule(2)\} Contains antibodies for anti-A and anti-B $BR

EOT
$ans1 = 3;
$ans2 = 4;
$ans3 = 1;
$ans4 = 4;
$ans5 = 3;

&ANS( std_num_cmp ($ans1) );
&ANS( std_num_cmp ($ans2) );
&ANS( std_num_cmp ($ans3) );
&ANS( std_num_cmp ($ans4) );
&ANS( std_num_cmp ($ans5) );

ENDDOCUMENT();        # This should be the last executable line in the problem.
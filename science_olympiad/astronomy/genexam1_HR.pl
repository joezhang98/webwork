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

$pict = "HR.gif";

BEGIN_TEXT;
\{image($pict)\}; $BR
$BR
Identify the following regions of the HR diagram according to what stars are found there or what the region is commonly called.  Choose from: main sequence, supergiants, giants,
 horizontal branch, red dwarfs, variable stars, white dwarfs, protostars (not all terms will be used).  Please input the term exactly as it is shown in the prior list. $BR

$BR
A: \{ans_rule(10)\} $BR
B: \{ans_rule(10)\} $BR
C: \{ans_rule(10)\}  $BR
D: \{ans_rule(10)\} $BR
E: \{ans_rule(10)\}  $BR

END_TEXT;
$ans1 = "giants";
$ans2 = "main sequence";
$ans3 = "white dwarfs";
$ans4 = "supergiants";
$ans5 = "horizontal branch";

&ANS(str_cmp($ans1) );
&ANS(str_cmp($ans2) );
&ANS(str_cmp($ans3) );
&ANS(str_cmp($ans4) );
&ANS(str_cmp($ans5) );

ENDDOCUMENT();        # This should be the last executable line in the problem.
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


BEGIN_TEXT;

Prompt: Design and conduct an experiment that explores how light is refracted/reflected differently when it goes through different liquids.  $BR $BR
Materials list (remember you may bring your own stopwatch and ruler): water glasses or clear plastic cups, water, other liquids (e.g. vegetable oil, apple juice, rubbing alcohol, etc.), food colouring, straws, pencils, spoons, ruler, protractor. $BR $BR  
Enter 1 to indicate you have completed this task, and remember to turn in your report to the Junta:  \{ans_rule(1)\}
$BR
END_TEXT;

$ans1 = 1;
&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );

ENDDOCUMENT();        # This should be the last executable line in the problem.
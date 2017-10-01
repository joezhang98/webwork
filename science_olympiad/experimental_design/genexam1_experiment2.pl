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

Prompt: Design and conduct an experiment that explores different designs of paper airplanes and determines which one flies the longest and smoothest.  $BR $BR
Materials list: paper clips, scissors, calculators, scale, graph paper, glue sticks, tape, white printer paper, construction paper, photo stock paper, cardboard, notebook paper, and notecards $BR $BR  
Enter 1 to indicate you have completed this task, and remember to turn in your report to the Junta:  \{ans_rule(1)\}
$BR
END_TEXT;

$ans1 = 1;
&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );

ENDDOCUMENT();        # This should be the last executable line in the problem.
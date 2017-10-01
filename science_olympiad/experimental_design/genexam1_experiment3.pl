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

Prompt: Design and conduct an experiment that explores kinematics, gravity, and air resistance.  $BR $BR
Materials list: 1 foam board, 1 ping-pong ball, one golf ball, one rubber ball, 3 rubber pads, measuring tape, scotch tape, a table $BR $BR  
Enter 1 to indicate you have completed this task, and remember to turn in your report to the Junta:  \{ans_rule(1)\}
$BR
END_TEXT;

$ans1 = 1;
&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );

ENDDOCUMENT();        # This should be the last executable line in the problem.
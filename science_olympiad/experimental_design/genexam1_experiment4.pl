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

Prompt: Design and conduct an experiment that deals with constructing a springboard device and measures the vertical and horizontal distance travelled by a ball launched off the springboard $BR $BR
Materials list: 1 rubber ball, 10 paper clips, 10 rubber bands, 4 small balloons, 1 ziplock bag, 10 pushpins, cardboard, bubble wrap, tape $BR $BR  
Enter 1 to indicate you have completed this task, and remember to turn in your report to the Junta:  \{ans_rule(1)\}
$BR
END_TEXT;

$ans1 = 1;
&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );

ENDDOCUMENT();        # This should be the last executable line in the problem.
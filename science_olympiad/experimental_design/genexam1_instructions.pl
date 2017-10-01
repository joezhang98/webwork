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

$pict = "rubric.gif";


BEGIN_TEXT;

\{image($pict)\};
$BR

Experimental Design is a signature Science Olympiad event in which students must design and conduct a valid scientific experiment with materials that are provided to them.  The rubric for the event is attached above (you may click on it to enlarge it and see the requirements for the lab report you must write).  The materials provided may include many random objects, but not all of them need to be used.  $BR $BR
The following problems each contain a list of materials and an experiment prompt.  Your task for each problem is to write out an experiment using some of the materials listed.  The lab report should include all parts listed in the rubric (for the sake of time please make up reasonable data for your observation and analysis sections).  Please write neatly on lined or blank paper as you will have to turn in your report after to the Junta for evaluation.  You have 50 minutes for each question. $BR $BR  
Enter 1 to indicate you have read these instructions.  You may move on to the first experiment if you are ready:  \{ans_rule(1)\}
$BR
END_TEXT;

$ans1 = 1;
&ANS(num_cmp($ans1,reltol=>1,format=>'%0.4g') );

ENDDOCUMENT();        # This should be the last executable line in the problem.
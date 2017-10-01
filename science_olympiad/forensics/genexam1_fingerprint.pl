##DESCRIPTION
#
#File created: 06/09/2016
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

$pict = "fingerprint.gif";

$tf = new_select_list();
$tf -> qa (
	"Plain arch","A",
	"Tented arch","B",
	"Ulnar loop","C",
	"Radial loop","D",
	"Plain whorl","E",
	"Central pocket loop","F",
	"Double loop whorl","G",
	"Accidental whorl","H",
	
);
$tf->{ans_rule_len} = 1;
$tf -> choose(8);

BEGIN_TEXT;
\{image($pict)\};
$BR
Match the following fingerprint patterns with their appropriate names.  Enter the appropriate capital letter in the answer space provided.  You may click on the picture to enlarge it. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR

\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.

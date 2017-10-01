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

$tf = new_select_list();
$tf -> qa (
	"Yellow flame, very distinct","A",
	"Carmine or red flame","B",
	"Yellow-red flame","C",
	"Bright green flame, very visible","D",
	"Faint green flame","E",
	"Light purple, lavender flame","F",
	);
$tf->{ans_rule_len} = 1;
$tf -> choose(6);

BEGIN_TEXT;
Match the following elements with the colours produced in a flame test.  Please input the capital letter next to the term in the answer space. $BR
$BR
DO NOT PRESS SUBMIT (OR ENTER) UNTIL YOU HAVE ANSWERED ALL PARTS!$BR
$BR
A - Sodium $BR
B - Lithium $BR
C - Calcium $BR
D - Boric acid (H) $BR
E - Ammonium chloride $BR
F - Potassium $BR

$BR
\{$tf->print_q\}
$BR
END_TEXT;


&ANS(str_cmp($tf->ra_correct_ans));

ENDDOCUMENT();        # This should be the last executable line in the problem.
